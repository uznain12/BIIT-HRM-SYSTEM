// ignore_for_file: prefer_const_constructors
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';

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
          title: Center(child: Text("")),
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
                leading: const Icon(Icons.present_to_all),
                title: const Text(
                  'Attendance ',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EmployeeAttendenceScreen(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.leave_bags_at_home),
                title: const Text(
                  'Leaves',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EmployeeLeaveScreen(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Leave Request',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EmployeeLeaveReqScreen(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Setting',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EmployeeLeaveReqScreen(),
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
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ApplicantProfile(),
                  //   ),
                  // );
                },
              ),
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
                      color: Colors.blue.shade900,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)))),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50, left: 110),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5,
                        color: Colors.black,
                        style: BorderStyle.solid),
                  ),
                  child: const Text(
                    '    Dashboard \n Employee side',
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
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 15),
                      child: Container(
                        height: 40,
                        width: 50,
                        // ignore: prefer_const_constructors
                        child: Image(
                            height: 200,
                            width: 200,
                            // ignore: prefer_const_constructors
                            image: AssetImage('images/attendanceicon.png')),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             EmployeeAttendenceScreen()));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.9),
                            side: const BorderSide(
                                color: Colors.black, width: 5.0),
                          )),
                      child: const Text(
                        'ATTENDANCE',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'RobotoSlab-Black',
                            color: Colors.blue,
                            fontWeight: FontWeight.w900),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Container(
                        height: 30,
                        width: 50,
                        // ignore: prefer_const_constructors
                        child: Image(
                            height: 100,
                            width: 150,
                            // ignore: prefer_const_constructors
                            image: AssetImage('images/LeavesIcon.png')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17, left: 5),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             EmployeeLeaveScreen()));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.9),
                              side: const BorderSide(
                                  color: Colors.black, width: 5.0),
                            )),
                        child: const Text(
                          'LEAVES',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'RobotoSlab-Black',
                              color: Colors.blue,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Container(
                        height: 30,
                        width: 50,
                        // ignore: prefer_const_constructors
                        child: Image(
                            height: 200,
                            width: 200,
                            // ignore: prefer_const_constructors
                            image: AssetImage('images/LeavesIcon.png')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             EmployeeLeaveReqScreen()));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.9),
                              side: const BorderSide(
                                  color: Colors.black, width: 5.0),
                            )),
                        child: const Text(
                          'LEAVE REQUEST',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'RobotoSlab-Black',
                              color: Colors.blue,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            )
          ],
        ));
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
}
