// ignore_for_file: prefer_const_constructors
import 'package:fyp_practise_project/HR-Home/New-Committe/add_new_commite_members.dart';
import 'package:fyp_practise_project/Models/committe_model.dart' hide Image;
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';

class AllEmployeesForCommiitte extends StatefulWidget {
  int? uid;
  int? committeid;
  AllEmployeesForCommiitte({required this.uid, required this.committeid});

  @override
  State<AllEmployeesForCommiitte> createState() =>
      _AllEmployeesForCommiitteState();
}

List<LoginModel> userlistbyrole = [];
List<CommitteModel> committelist = [];

class _AllEmployeesForCommiitteState extends State<AllEmployeesForCommiitte> {
  // New map to store the check-in/check-out status

  String _searchQuery = ''; // User for search

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(child: Text("Select Committee Members")),
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
                      List<LoginModel> filteredUsers = [];
                      if (_searchQuery.isNotEmpty) {
                        for (final user in userlistbyrole) {
                          if (((user.fname?.toLowerCase() ?? '') +
                                  ' ' +
                                  (user.lname?.toLowerCase() ?? ''))
                              .contains(_searchQuery.toLowerCase())) {
                            filteredUsers.add(user);
                          }
                        }
                      } else {
                        filteredUsers = List.from(userlistbyrole);
                      }

                      return GridView.builder(
                          itemCount: filteredUsers.length,
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
                            // Create a card for each employee
                            return InkWell(
                              onTap: (() async {
                                // int? committeeId = (await getcommitte(
                                //     userlistbyrole[index].uid!)) as int?;
                                // if (committeeId == null) {
                                //   print(
                                //       'Error fetching committeeId for user ${userlistbyrole[index].uid}');
                                //   return; // if there was an error fetching the committeeId, do not navigate
                                // }
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NewCreateCommitteMember(
                                              committeid: widget.committeid,
                                              uid: filteredUsers[index].uid,
                                              fname: filteredUsers[index].fname,
                                              lname: filteredUsers[index].lname,
                                              email: filteredUsers[index].email,
                                              pass:
                                                  filteredUsers[index].password,
                                              gender:
                                                  filteredUsers[index].gender,
                                              cnic: filteredUsers[index].cnic,
                                              contatc:
                                                  filteredUsers[index].mobile,
                                              image: filteredUsers[index].image,
                                              address:
                                                  filteredUsers[index].address,
                                              dob: filteredUsers[index].dob,
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
                                      child: (filteredUsers[index].image !=
                                                  null &&
                                              filteredUsers[index]
                                                  .image
                                                  .trim()
                                                  .isNotEmpty)
                                          ? ClipOval(
                                              child: Image(
                                                fit: BoxFit.cover,
                                                height: 100,
                                                width: 100,
                                                image: NetworkImage(imagepath +
                                                    filteredUsers[index].image),
                                              ),
                                            )
                                          : const Icon(Icons.person, size: 100),
                                    ),

                                    // If the employee has an image, display it in a circular format

                                    // Display the employee's name
                                    Text(
                                      "${filteredUsers[index].fname} ${filteredUsers[index].lname}",
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
          .get(Uri.parse('http://$ip/HrmPractise02/api/User/UserroleGet'));
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

  // Future<List<CommitteModel?>> getcommitte(id) async {
  //   // Get the current user's UID.
  //   final response = await http.get(
  //       Uri.parse('http://$ip/HrmPractise02/api/Committee/CommitteeGet?comid=$id'));
  //   var Data = jsonDecode(response.body.toString());

  //   if (response.statusCode == 200) {
  //     committelist.clear();
  //     for (Map<String, dynamic> index in Data) {
  //       committelist.add(CommitteModel.fromJson(index));
  //     }
  //   } else {
  //     print(
  //         'Error occurred: ${response.statusCode} - ${response.body}'); // print the error

  //   }
  //   return committelist;
  // }

  Future<CommitteModel?> getcommitte(int id) async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Committee/CommitteeGet?comid=$id'));
    if (response.statusCode == 200) {
      var Data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        committelist.clear();

        if (Data is List<dynamic>) {
          for (Map<String, dynamic> index in Data) {
            committelist.add(CommitteModel.fromJson(index));
          }
          // Return the last attendance record if the list is not empty
          return committelist.isNotEmpty ? committelist.last : null;
        } else {
          print('Unexpected data format');
          return null;
        }
      } else {
        return null;
      }
    }
  }
}
