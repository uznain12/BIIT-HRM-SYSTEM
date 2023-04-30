import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class PersonalUpdate extends StatefulWidget {
  int? uid;
  String? email;
  String? pass;
  String? role;

  PersonalUpdate(
      {required this.uid,
      required this.email,
      required this.pass,
      required this.role});

  @override
  State<PersonalUpdate> createState() => _PersonalUpdateState();
}

class _PersonalUpdateState extends State<PersonalUpdate> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
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
  void initState() {
    super.initState();
    fetchcuser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Information"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                GestureDetector(
                  onTap: getImage,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle, // make the container circular
                          image: image != null
                              ? DecorationImage(
                                  image: FileImage(File(image!.path)),
                                  fit: BoxFit.cover,
                                )
                              : imageUrl != null
                                  ? DecorationImage(
                                      image: NetworkImage(imageUrl!),
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                        ),
                        height: 100,
                        width: 100,
                        child: image == null && imageUrl == null
                            ? const Center(
                                child: Icon(
                                  Icons.add_a_photo,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              )
                            : null,
                      ),
                      if (image !=
                              null || //  AGR image ha to phir bi ya edit button nechay show hoga
                          imageUrl !=
                              null) // if there is an image, show the edit icon
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.8),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ),
                              onPressed: getImage,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
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
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      UpdateUser();
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Update'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> fetchcuser() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/User/UserGet?id=${widget.uid}&email=${widget.email}&password=${widget.pass} &role=${widget.role}')); //is ma jo {widget.pass} wgaira hn wo jo hum na uper constructor ma assign kiya h   or  jo shuru ma likhay hn jesay password wgaira ya database column ka names hn or inko fetch is liya kiya ha ka inko  update nai kar sakay ga user ya same rahain ga
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        final user = LoginModel.frommap(data[0]);
        _firstnameController.text = user.fname.toString();
        _lastnameController.text = user.lname.toString();
        _mobileController.text = user.mobile.toString();
        _cnicController.text = user.cnic.toString();
        _dobController.text = user.dob.toString();
        _genderController.text = user.gender.toString();
        _addressController.text = user.address.toString();
        imageUrl = imagepath + user.image;

        // Load the image from the previous URL, if exists
        if (user.image != null && user.image.isNotEmpty) {
          setState(() {
            image = null; // Clear the previously selected image
            imageUrl = imagepath + user.image;
          });
        }
      }
    } else {
      throw Exception('Failed to load education');
    }
  }

  void UpdateUser() async {
    var url = "http://$ip/HrmPractise02/api/User/UpdateUser";
    var request = http.MultipartRequest('PUT', Uri.parse(url));

    // Add form fields
    request.fields['Uid'] = widget.uid.toString();
    request.fields['email'] = widget.email!;
    request.fields['password'] = widget.pass!;
    request.fields['role'] = widget.role!;
    request.fields['Fname'] = _firstnameController.text;
    request.fields['Lname'] = _lastnameController.text;
    request.fields['address'] = _addressController.text;
    request.fields['mobile'] = _mobileController.text;
    request.fields['cnic'] = _cnicController.text;
    request.fields['dob'] = _dobController.text;
    request.fields['gender'] = _genderController.text;

    // Add the image file if exists
    if (image != null) {
      var fileStream = http.ByteStream(image!.openRead());
      var length = await image!.length();
      var multipartFile = http.MultipartFile('image', fileStream, length,
          filename: basename(image!.path));
      request.files.add(multipartFile);
    }

    // if (image != null) {
    //   request.files
    //       .add(await http.MultipartFile.fromPath('image', image!.path));
    // }

    try {
      var response = await request.send();
      var responseBody = await response.stream.bytesToString();
      var dataa = jsonDecode(responseBody);
      print(dataa);
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
