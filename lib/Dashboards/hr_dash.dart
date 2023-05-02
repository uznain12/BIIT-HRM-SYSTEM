// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp_practise_project/Applicant-Home/Job/job_get.dart';
import 'package:fyp_practise_project/User_Persoanl_Profile/users_get_profile.dart';
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
    return Scaffold(
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
                      builder: (context) => UserPersonalInfo(uid: widget.uid),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.work),
                title: const Text('Job Applications'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobApplications(uid: widget.uid),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.work),
                title: const Text(
                  'Add Job ',
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
                leading: const Icon(Icons.work),
                title: const Text(
                  'Posted Jobs ',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicantApplyJob(
                        uid: widget.uid,
                      ),
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
                  SharedPreferences sp = await SharedPreferences.getInstance();
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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/hrrbackground.jpg'),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15,
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JobApplications(
                                    uid: widget.uid,
                                  )));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [Colors.grey.shade400, Colors.grey.shade200],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.work,
                              size: 60,
                              color: Colors.blue,
                            ),
                            Text(
                              "Job Applications",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'RobotoSlab-VariableFont_wght'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => AddEducation(
                      //               uid: widget.uid,
                      //             )));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [Colors.grey.shade400, Colors.grey.shade200],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.calendar_today_rounded,
                              size: 60,
                              color: Colors.blue,
                            ),
                            Text(
                              "Leave Applications",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoSlab-VariableFont_wght'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.39,
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => AddExperience(
                      //               uid: widget.uid,
                      //             )));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [Colors.grey.shade400, Colors.grey.shade200],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.event,
                              size: 60,
                              color: Colors.blue,
                            ),
                            Text(
                              "Attendance",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'RobotoSlab-VariableFont_wght',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JobPost()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [Colors.grey.shade400, Colors.grey.shade200],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.work_outline_rounded,
                              size: 60,
                              color: Colors.blue,
                            ),
                            Text(
                              "Job Post",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'RobotoSlab-VariableFont_wght',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
