// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp_practise_project/HR-Home/Hr-Personal/hr_profile.dart';
import 'package:fyp_practise_project/HR-Home/Job/job_applications.dart';
import 'package:fyp_practise_project/HR-Home/Job/job_post.dart';
import 'package:fyp_practise_project/login.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AdminDashboard extends StatefulWidget {
  int? uid;
  AdminDashboard({super.key, required this.uid});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/register.png'), fit: BoxFit.cover)),
        child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text("HR Side")),
            ),
            drawer: Drawer(
              child: ListView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    accountName: Text(
                      "Muhammad Amir",
                      style: TextStyle(fontSize: 20),
                    ),
                    accountEmail: Text("Amir1@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                        child: Text(
                      "MA",
                      style: TextStyle(color: Colors.black),
                    )),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HrPersonalInfo(uid: widget.uid),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Job Applications'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              JobApplications(uid: widget.uid),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.work),
                    title: const Text(
                      'Post Job',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobPost(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.leave_bags_at_home),
                    title: const Text(
                      'Leave Mnagement',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ApplicantProfile(),
                      //   ),
                      // );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.present_to_all),
                    title: const Text(
                      'Attendance Report',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobPost(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text(
                      'Setting',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobPost(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text(
                      'Log Out',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () async {
                      SharedPreferences sp =
                          await SharedPreferences.getInstance();
                      sp.clear();
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
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 600),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink.shade900,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)))),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 60, left: 110),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 5,
                            color: Colors.black,
                            style: BorderStyle.solid),
                      ),
                      child: const Text(
                        '    Dashboard \n       HR SIDE',
                        style: TextStyle(
                            fontFamily: 'RobotoSlab-Black',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 770),
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFBE7C6),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 350),
                )
              ],
            )));
  }
}
