// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp_practise_project/login.dart';

import 'package:shared_preferences/shared_preferences.dart';

class GuardDashboard extends StatefulWidget {
  const GuardDashboard({super.key});

  @override
  State<GuardDashboard> createState() => _GuardDashboardState();
}

class _GuardDashboardState extends State<GuardDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
        ),
        drawer: Drawer(
          width: 200,
          // ignore: sort_child_properties_last
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "   Murtaza Ali",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("Ali@gmail.coms"),
                currentAccountPicture: CircleAvatar(child: Text("U")),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
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
          backgroundColor: Colors.white,
          elevation: 4.0,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.grey.shade100,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 600),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)))),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 40, left: 110),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5,
                        color: Colors.black,
                        style: BorderStyle.solid),
                  ),
                  child: const Text(
                    '    Dashboard \n   Guard   side',
                    style: TextStyle(
                        fontFamily: 'RobotoSlab-Black',
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.height * 0.09),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.blue,
                          child: const Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('images/user2.png')),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          color: Colors.blue,
                          child: const Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('images/user3.png')),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height * 0),
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Mr.Aftab",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                )),
                            SizedBox(
                              width: 40,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Mr.Ahsan",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.blue,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             GuardmanageAttendnace()));
                          },
                          child: const Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('images/user1 (1).png')),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        color: Colors.blue,
                        child: const Image(
                            height: 100,
                            width: 100,
                            image: AssetImage('images/user2.png')),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height * 0),
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             GuardmanageAttendnace()));
                                },
                                child: Text(
                                  "Mr.Shahid",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                )),
                            SizedBox(
                              width: 40,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Mr.Amir",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        ),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
