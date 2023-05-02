// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:fyp_practise_project/Dashboards/applicant_dash.dart';
import 'package:fyp_practise_project/Dashboards/employee_dash.dart';
import 'package:fyp_practise_project/Dashboards/guard_dash.dart';
import 'package:fyp_practise_project/Dashboards/hr_dash.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Declare variables for padding
  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passcontroller = TextEditingController();
  bool vis = true;

  bool _showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade300,
                  Colors.purple.shade300,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.016,
              left: MediaQuery.of(context).size.height * 0.099,
              right: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Container(
              child: const Image(
                  height: 200,
                  width: 200,
                  image: AssetImage('images/biitlogo-removebg.png')),
            ),
          ),
          Positioned(
              bottom: 0,
              child: SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.1,
                          left: MediaQuery.of(context).size.width * 0.1,
                          top: MediaQuery.of(context).size.width * 0.1,
                        ),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.aspectRatio * 8.0),
                            child: Container(
                              height: 70,
                              width: 410,
                              child: TextFormField(
                                controller: _emailcontroller,
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: 'Email',
                                  hintText: 'Enter Your Email Text',
                                  hintStyle: TextStyle(fontSize: 15),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelStyle: TextStyle(fontSize: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.aspectRatio * 8.0),
                            child: Container(
                              height: 70,
                              width: 410,
                              child: TextFormField(
                                obscureText: vis,
                                controller: _passcontroller,
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(vis
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        vis = !vis;
                                      });
                                    },
                                  ),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: 'Password',
                                  hintText: 'Enter Your Password',
                                  hintStyle: TextStyle(fontSize: 15),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelStyle: TextStyle(fontSize: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          ModalProgressHUD(
                            inAsyncCall: _showSpinner,
                            child: ElevatedButton(
                              onPressed: () async {
                                LoginModel u = LoginModel();
                                u.email = _emailcontroller.text;
                                u.password = _passcontroller.text;

                                String? response = await u.login();
                                if (response == null) {
                                  print("No value");
                                } else if (response == "\"false \"") {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text(
                                            "Invalid email or password"),
                                        actions: <Widget>[
                                          TextButton(
                                            child: const Text("OK"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  try {
                                    dynamic map = jsonDecode(response);
                                    String role = map["role"].toLowerCase();
                                    int? uid = map["Uid"];

                                    if (role == "applicant") {
                                      SharedPreferences sp =
                                          await SharedPreferences.getInstance();
                                      sp.setString('email',
                                          _emailcontroller.text.toString());
                                      sp.setString('role', "applicant");
                                      sp.setBool('islogin', true);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              // ignore: prefer_const_constructors
                                              ApplicantDashboard(uid: uid)),
                                        ),
                                      );
                                    } else if (role == "hr") {
                                      SharedPreferences sp =
                                          await SharedPreferences.getInstance();
                                      sp.setString('email',
                                          _emailcontroller.text.toString());
                                      sp.setString('role', "hr");
                                      sp.setBool('islogin', true);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              // ignore: prefer_const_constructors
                                              AdminDashboard(
                                                uid: uid,
                                              )),
                                        ),
                                      );
                                    } else if (role == "guard") {
                                      SharedPreferences sp =
                                          await SharedPreferences.getInstance();
                                      sp.setString('email',
                                          _emailcontroller.text.toString());
                                      sp.setString('role', "guard");
                                      sp.setBool('islogin', true);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              // ignore: prefer_const_constructors
                                              GuardDashboard(
                                                uid: uid,
                                              )),
                                        ),
                                      );
                                    } else if (role == "employee") {
                                      SharedPreferences sp =
                                          await SharedPreferences.getInstance();
                                      sp.setString('email',
                                          _emailcontroller.text.toString());
                                      sp.setString('role', "employee");
                                      sp.setBool('islogin', true);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              // ignore: prefer_const_constructors
                                              HiredEmployeeDashboard(
                                                uid: uid,
                                              )),
                                        ),
                                      );
                                    } else if (role == "hod") {
                                      SharedPreferences sp =
                                          await SharedPreferences.getInstance();
                                      sp.setString('email',
                                          _emailcontroller.text.toString());
                                      sp.setString('role', "hod");
                                      sp.setBool('islogin', true);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              // ignore: prefer_const_constructors
                                              AdminDashboard(
                                                uid: uid,
                                              )),
                                        ),
                                      );
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text(
                                                "Invalid credentials"),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text("OK"),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  } catch (e) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text("Error"),
                                          content: const Text(
                                              "No User Found Please Sign Up First"),
                                          actions: <Widget>[
                                            TextButton(
                                              child: Text("OK"),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                              child: Container(
                                width: 410,
                                height: 60,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.blue.shade300,
                                      Colors.purple.shade300,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 410,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    width: 200,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.purple.shade300,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Create Account",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]))),
              ))
        ]),
      )),
    );
  }
}
