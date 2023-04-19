// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:fyp_practise_project/Applicant-Home/app_profile.dart';
import 'package:fyp_practise_project/Applicant-Home/Job/job_get.dart';
import 'package:fyp_practise_project/login.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ApplicantDashboard extends StatefulWidget {
  int? uid;
  ApplicantDashboard({required this.uid});
  // const ApplicantDashboard({super.key});

  @override
  State<ApplicantDashboard> createState() => _ApplicantDashboardState();
}

class _ApplicantDashboardState extends State<ApplicantDashboard> {
  int _selectedIndex = 0;
  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.work),
      label: 'Jobs',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade300,
          items: _bottomNavBarItems,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            switch (_selectedIndex) {
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplicantApplyJob(uid: widget.uid),
                  ),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplicantProfile(uid: widget.uid),
                  ),
                );
                break;
            }
          },
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "   Umer Akram",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("umer123@gmail.coms"),
                currentAccountPicture: CircleAvatar(child: Text("U")),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicantProfile(uid: widget.uid),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.work),
                title: const Text('Jobs'),
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
                leading: const Icon(Icons.assignment),
                title: const Text('Applications'),
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
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(),
                child: Container(
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/jobs.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black,
                    border: Border.all(
                        width: 5,
                        color: Colors.black,
                        style: BorderStyle.solid),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.377),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.grey.shade200, Colors.blue.shade400],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.41,
                  left: MediaQuery.of(context).size.height * 0.10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Find Your dream\n           Jobs",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'RobotoSlab-VariableFont_wght',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "Find Your Dream Job now and feel the \nconvinience with BIIT",
                      textAlign: TextAlign.center,
                    )
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.6,
                left: MediaQuery.of(context).size.height * 0.06,
                right: MediaQuery.of(context).size.height * 0.06,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApplicantApplyJob(
                                uid: widget.uid,
                              )));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 3, color: Colors.black)),
                  child: Center(
                      child: Text(
                    "GET STARTED",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'RobotoSlab-VariableFont_wght',
                      fontWeight: FontWeight.w900,
                    ),
                  )),
                ),
              ),
            )
          ],
        ));
  }
}