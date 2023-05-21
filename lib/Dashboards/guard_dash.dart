// ignore_for_file: prefer_const_constructors
import 'package:fyp_practise_project/Guard-Home/all_employees_attendance.dart';

import 'package:fyp_practise_project/Guard-Home/checkin.dart';

import 'package:fyp_practise_project/Guard-Home/checkout.dart';
import 'package:fyp_practise_project/Models/attendance_model.dart';

import 'package:fyp_practise_project/User_Persoanl_Profile/users_get_profile.dart';
import 'package:fyp_practise_project/Login-SignUp/login.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GuardDashboard extends StatefulWidget {
  int? uid;
  GuardDashboard({required this.uid});

  @override
  State<GuardDashboard> createState() => _GuardDashboardState();
}

List<LoginModel> userlist = [];
List<LoginModel> userlistbyrole = [];
List<AttendanceWithIdModel> attendancewithidlist = [];

class _GuardDashboardState extends State<GuardDashboard> {
  Map<int, bool> userCheckStatus =
      {}; // New map to store the check-in/check-out status

  @override
  void initState() {
    super.initState();
    fetchcuser(widget.uid!).then((_) {
      setState(() {});
    });
  }

  String _searchQuery = ''; // User for search

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Welcome: ${userlist.isNotEmpty ? userlist[0].fname : ''} ${userlist.isNotEmpty ? userlist[0].lname : ''}",
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "${userlist.isNotEmpty ? userlist[0].fname : ''} ${userlist.isNotEmpty ? userlist[0].lname : ''}",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail:
                    Text("${userlist.isNotEmpty ? userlist[0].email : ''}"),
                currentAccountPicture: CircleAvatar(
                  child: userlist.isNotEmpty && userlist[0].image.isNotEmpty
                      ? ClipOval(
                          child: Image(
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                              image:
                                  NetworkImage(imagepath + userlist[0].image)),
                        )
                      : const SizedBox.shrink(),
                )),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPersonalInfo(uid: widget.uid),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Attendance'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AttendanceMainPage(
                      uid: widget.uid,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ApplicantApplyApplications(),
                //   ),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                'Log Out',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                // ignore: use_build_context_synchronously
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            )
          ],
        ),
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

          // FutureBuilder to fetch data asynchronously
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
                                // ignore: prefer_interpolation_to_compose_strings
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

                            // Initialize the check status for each user if not already initialized
                            if (userCheckStatus[userlistbyrole[index].uid] ==
                                null) {
                              userCheckStatus[userlistbyrole[index].uid!] =
                                  false;
                            }
                            // Create a card for each employee
                            return InkWell(
                              onTap: () async {
                                setState(() {
                                  userCheckStatus[userlistbyrole[index].uid!] =
                                      !userCheckStatus[
                                          userlistbyrole[index].uid]!;
                                });

                                AttendanceWithIdModel?
                                    attendanceData = //Ya Bhot Important line ha iska matlab ha ka jo hum na data attendance model ka get kiya wo userlist by employee ko provide kar diya ha
                                    await fetchAttendanceByUid(
                                        userlistbyrole[index].uid!);

                                if (userCheckStatus[
                                    userlistbyrole[index].uid]!) {
                                  // ignore: use_build_context_synchronously
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GuardCheckIn(
                                              selectedEmployee:
                                                  userlistbyrole[index],
                                              isCheckIn: true)));
                                } else {
                                  if (attendanceData != null) {
                                    // ignore: use_build_context_synchronously
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => GuardCheckOut(
                                                checkin: attendanceData.checkin,
                                                Attendanceid:
                                                    attendanceData.attendanceid,
                                                selectedEmployee:
                                                    userlistbyrole[index],
                                                isCheckIn: false)));
                                  }
                                }
                              },
                              child: Card(
                                color:
                                    userCheckStatus[userlistbyrole[index].uid]!
                                        ? Colors.green
                                        : Colors.red,
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
                                      // decoration:
                                      //     // BoxDecoration(color: Colors.black),
                                      child: userlistbyrole[index]
                                              .image
                                              .isNotEmpty
                                          ? ClipOval(
                                              child: Image(
                                                  fit: BoxFit.cover,
                                                  height: 100,
                                                  width: 100,
                                                  image: NetworkImage(
                                                      imagepath +
                                                          userlistbyrole[index]
                                                              .image)),
                                            )
                                          // If the employee doesn't have an image, display an empty person icon
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

  Future<List<LoginModel>> fetchcuser(int id) async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/User/UserGet?id=$id')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      userlist.clear();
      for (Map<String, dynamic> index in Data) {
        userlist.add(LoginModel.frommap(index));
      }
      return userlist;
    } else {
      return userlist;
    }
  }

  Future<List<LoginModel>> fetchcuserbyrole() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/User/UserroleGet')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      userlistbyrole.clear();
      for (Map<String, dynamic> index in Data) {
        userlistbyrole.add(LoginModel.frommap(index));
      }
      return userlistbyrole;
    } else {
      return userlistbyrole;
    }
  }

  //ya jo function bnaya ha is ka bgair attendance update nai ho sakti iska matlab ya ha ka current user jo chehckin huva uski id ka base pa get kar ka hum na on tap ma provide kiya card ka ontap ma

  Future<AttendanceWithIdModel?> fetchAttendanceByUid(int id) async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Attendance/AttendanceGet?uid=$id'));
    if (response.statusCode == 200) {
      var Data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        attendancewithidlist.clear();

        if (Data is List<dynamic>) {
          for (Map<String, dynamic> index in Data) {
            attendancewithidlist.add(AttendanceWithIdModel.fromJson(index));
          }
          // Return the last attendance record if the list is not empty
          return attendancewithidlist.isNotEmpty
              ? attendancewithidlist.last
              : null;
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
