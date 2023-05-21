// ignore_for_file: prefer_const_constructors

import 'package:fyp_practise_project/Employee-Home/Employee-Committee/comittee_home.dart';
import 'package:fyp_practise_project/Employee-Home/Employee-Leave/apply_for_leave.dart';
import 'package:fyp_practise_project/Employee-Home/Employee-Personal/employye_profile.dart';
import 'package:fyp_practise_project/Employee-Home/Employee-Attendance/attendance.dart';
import 'package:fyp_practise_project/Employee-Home/Employee-Leave/employee_all_leave_applications.dart';

import 'package:fyp_practise_project/Login-SignUp/login.dart';
import 'package:fyp_practise_project/User_Persoanl_Profile/users_get_profile.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HiredEmployeeDashboard extends StatefulWidget {
  int? uid;
  HiredEmployeeDashboard({required this.uid});

  @override
  State<HiredEmployeeDashboard> createState() => _HiredEmployeeDashboardState();
}

List<LoginModel> userlist = [];

class _HiredEmployeeDashboardState extends State<HiredEmployeeDashboard> {
  @override
  void initState() {
    super.initState();
    fetchcuser(widget.uid!).then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Welcome  ${userlist.isNotEmpty ? userlist[0].fname : ''} ${userlist.isNotEmpty ? userlist[0].lname : ''}",
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
                                image: NetworkImage(
                                    imagepath + userlist[0].image)),
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
                      builder: (context) =>
                          EmployeePersonalInfo(uid: widget.uid),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.done),
                title: const Text('Attendance'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EmployeeAttendanceReport(uid: widget.uid),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.assignment),
                title: const Text('Leaves'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EmployeeLeaveApplication(uid: widget.uid),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.request_quote),
                title: const Text('Leave Request'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmployeeApplyLeave(uid: widget.uid),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text('Committee'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EmployeeMainCommittePage(uid: widget.uid),
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
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/background.jpg'),
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
                              builder: (context) => EmployeeApplyLeave(
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
                              Icons.event_note,
                              size: 60,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Apply For Leave",
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmployeeLeaveApplication(
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
                  left: MediaQuery.of(context).size.width * 0.29),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmployeeAttendanceReport(
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
                ],
              ),
            )
          ],
        ));
  }
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
