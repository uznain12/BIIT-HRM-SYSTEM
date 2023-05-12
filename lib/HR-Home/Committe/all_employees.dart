// ignore_for_file: prefer_const_constructors
import 'package:fyp_practise_project/Guard-Home/attendance_report.dart';
import 'package:fyp_practise_project/HR-Home/Committe/create_commite_member.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';

class AllEmployeesPagey extends StatefulWidget {
  int? uid;
  AllEmployeesPagey({required this.uid});

  @override
  State<AllEmployeesPagey> createState() => _AllEmployeesPageyState();
}

List<LoginModel> userlistbyrole = [];

class _AllEmployeesPageyState extends State<AllEmployeesPagey> {
  // New map to store the check-in/check-out status

  String _searchQuery = ''; // User for search

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("")),
      ),
      body: Stack(
        children: [
          // Background image container
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.jpg'),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter Emplyee name',
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),

          // FutureBuilder to fetch data asynchronouslyr
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: Container(
              // decoration: BoxDecoration(color: Colors.black),
              child: FutureBuilder(
                  future: fetchcuserbyrole(),
                  builder: (context, snapshot) {
                    // If the snapshot has data, build the grid
                    if (snapshot.hasData) {
                      return GridView.builder(
                          itemCount: userlistbyrole.length,
                          // Define the grid with 2 columns and spacing
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                2, // Ya isko 2 kiya matlab 1 line ma 2 records show hongay
                            crossAxisSpacing:
                                10, // ya 1 line ma 2 records ka darmayan space di ha
                            mainAxisSpacing:
                                10, // or ya line 1 or line 2 ka records ma space di ha
                            childAspectRatio: 3 / 2.5,
                          ),
                          itemBuilder: (context, index) {
                            if (_searchQuery.isNotEmpty &&
                                !((userlistbyrole[index].fname?.toLowerCase() ??
                                            '') +
                                        ' ' +
                                        (userlistbyrole[index]
                                                .lname
                                                ?.toLowerCase() ??
                                            ''))
                                    .contains(_searchQuery.toLowerCase())) {
                              return const SizedBox.shrink();
                            }

                            // Create a card for each employee
                            return InkWell(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CreateCommitteMember(
                                              uid: userlistbyrole[index].uid,
                                              fname:
                                                  userlistbyrole[index].fname,
                                              lname:
                                                  userlistbyrole[index].lname,
                                              email:
                                                  userlistbyrole[index].email,
                                              pass: userlistbyrole[index]
                                                  .password,
                                              gender:
                                                  userlistbyrole[index].gender,
                                              cnic: userlistbyrole[index].cnic,
                                              contatc:
                                                  userlistbyrole[index].mobile,
                                              image:
                                                  userlistbyrole[index].image,
                                              address:
                                                  userlistbyrole[index].address,
                                              dob: userlistbyrole[index].dob,
                                            )));
                              }),
                              child: Card(
                                // color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation:
                                    10, // ya shadow ka liya use hota ka hmara card zara backgroud sa utha utha huva nazr ay
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 90,
                                      child: (userlistbyrole[index].image !=
                                                  null &&
                                              userlistbyrole[index]
                                                  .image
                                                  .trim()
                                                  .isNotEmpty)
                                          ? ClipOval(
                                              child: Image(
                                                fit: BoxFit.cover,
                                                height: 100,
                                                width: 100,
                                                image: NetworkImage(imagepath +
                                                    userlistbyrole[index]
                                                        .image),
                                              ),
                                            )
                                          : const Icon(Icons.person, size: 100),
                                    ),

                                    // If the employee has an image, display it in a circular format

                                    // Display the employee's name
                                    Text(
                                      "${userlistbyrole[index].fname} ${userlistbyrole[index].lname}",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    } else {
                      // If the snapshot doesn't have data, display a CircularProgressIndicator
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Future<List<LoginModel>> fetchcuserbyrole() async {
    try {
      final response = await http
          .get(Uri.parse('http://$ip/HrmPractise02/api/User/UserbyroleGet'));
      var Data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        userlistbyrole.clear();
        for (Map<String, dynamic> index in Data) {
          userlistbyrole.add(LoginModel.frommap(index));
        }
        return userlistbyrole;
      } else {
        return [];
      }
    } catch (error) {
      print('Error fetching user data: $error');
      return [];
    }
  }
}
