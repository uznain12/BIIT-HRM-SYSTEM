import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Dashboards/applicant_dash.dart';
import 'package:fyp_practise_project/Dashboards/employee_dash.dart';
import 'package:fyp_practise_project/Dashboards/guard_dash.dart';
import 'package:fyp_practise_project/Dashboards/hr_dash.dart';
import 'package:fyp_practise_project/Login-SignUp/login.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    islogin();
  }

  void islogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool islogin = sp.getBool('islogin') ?? false;
    String role = sp.getString('role') ?? '';
    int uid = sp.getInt("uid") ?? 0;
    if (islogin) {
      if (role == 'applicant') {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ApplicantDashboard(
                        uid: uid,
                      )));
        });
      } else if (role == 'hr') {
        Timer(Duration(seconds: 13), () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AdminDashboard(
                        uid: uid,
                      )));
        });
      } else if (role == 'guard') {
        Timer(Duration(seconds: 13), () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GuardDashboard(
                        uid: uid,
                      )));
        });
      } else if (role == 'employee') {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HiredEmployeeDashboard(
                        uid: uid,
                      )));
        });
      }
    } else {
      Timer(Duration(seconds: 7), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: AssetImage('images/splash.jpg')),
    );
  }
}
