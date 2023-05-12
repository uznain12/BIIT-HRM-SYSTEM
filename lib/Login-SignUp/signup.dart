import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class ApplicantSignup extends StatefulWidget {
  ApplicantSignup({Key? key}) : super(key: key);

  @override
  State<ApplicantSignup> createState() => _ApplicantSignupState();
}

class _ApplicantSignupState extends State<ApplicantSignup> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cnicController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? image;
  String? imageUrl;

  final _picker = ImagePicker();
  bool showSpinner = false;
// Function to get image from the gallery
  Future getImage() async {
    final pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      print('no image selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _firstnameController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'First Name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _lastnameController,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                      prefixIcon: Icon(Icons.person),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Contact Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _cnicController,
                    decoration: const InputDecoration(
                      labelText: 'CNIC Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.credit_card),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _dobController,
                    onTap: () async {
                      FocusScope.of(context).requestFocus(FocusNode());
                      final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now());
                      if (picked != null) {
                        final dob =
                            DateTime(picked.year, picked.month, picked.day);
                        setState(() {
                          _dobController.text = dob.toString().split(' ')[0];
                        });
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Date Of Birth',
                      prefixIcon: Icon(Icons.calendar_today),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Gender'),
                      Radio(
                        value: 'Male',
                        groupValue: _genderController.text,
                        onChanged: (value) {
                          setState(() {
                            _genderController.text = value.toString();
                          });
                        },
                      ),
                      Text('Male'),
                      Radio(
                        value: 'Female',
                        groupValue: _genderController.text,
                        onChanged: (value) {
                          setState(() {
                            _genderController.text = value.toString();
                          });
                        },
                      ),
                      Text('Female'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _addressController,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      prefixIcon: Icon(Icons.location_on),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ApplicantSignup();
                          // Navigator.pop(context);
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ApplicantSignup({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/User/Signup";
    var data = {
      "Fname": _firstnameController.text,
      "Lname": _lastnameController.text,
      "email": _emailController.text,
      "mobile": _mobileController.text,
      "cnic": _cnicController.text,
      "dob": _dobController.text,
      "gender": _genderController.text,
      "address": _addressController.text,
      "password": _passwordController.text,

      "role": "applicant", // Change this to the appropriate value
    };
    var boddy = jsonEncode(data);
    var urlParse = Uri.parse(url);
    try {
      http.Response response = await http.post(urlParse,
          body: boddy, headers: {"Content-Type": "application/json"});
      var dataa = jsonDecode(response.body);
      print(dataa);
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
