import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Education/fetch_education.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: must_be_immutable
class JobPost extends StatefulWidget {
  JobPost({
    super.key,
  });
  // const AddEducation({super.key});

  @override
  State<JobPost> createState() => _JobPostState();
}

String? _selectedqualification;
List<String> _qualificationoption = [
  'Matric',
  'Inter',
  'Bachelor',
  'Master',
]; // op

String? _title;
List<String> _titleoptions = [
  'Teacher',
  'Assistant Teacher',
  'Guard',
  'Lab Attendant',
  'Professor',
]; //

TextEditingController _salaryController = TextEditingController();
TextEditingController _experienceController = TextEditingController();
TextEditingController _lastDateofapplyController = TextEditingController();
TextEditingController _locationController = TextEditingController();
TextEditingController _descriptionController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _JobPostState extends State<JobPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Job Credentials"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.07,
                left: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.height * 0.01),
            child: Container(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  InputDecorator(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    child: DropdownButtonFormField<String>(
                      hint: const Text(
                        "Job Title",
                        style: TextStyle(fontSize: 20),
                      ),
                      isExpanded: true,
                      value: _title,
                      items: _titleoptions.map((String option) {
                        return DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _title = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select Job Title';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputDecorator(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    child: DropdownButtonFormField<String>(
                      hint: const Text(
                        "Qualification",
                        style: TextStyle(fontSize: 20),
                      ),
                      isExpanded: true,
                      value: _selectedqualification,
                      items: _qualificationoption.map((String option) {
                        return DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedqualification = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select Required Qualification';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _salaryController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_sharp),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Salary',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Basic';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _experienceController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Experience',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Required Experience';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _lastDateofapplyController,
                    onTap: () async {
                      FocusScope.of(context).requestFocus(FocusNode());
                      final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now());
                      if (picked != null) {
                        setState(() {
                          _lastDateofapplyController.text =
                              picked.toString().split(' ')[0];
                        });
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Last Date Of Apply',
                      prefixIcon: Icon(Icons.calendar_today),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Select Last Date ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _locationController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_sharp),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Location',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Your  Job Location ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_sharp),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Description',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Description';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          JobPost();
                          Navigator.pop(context);
                        }
                      },
                      child: Text("Save")),
                ]),
              ),
            ),
          ),
        ));
  }

  void JobPost() async {
    var url = "http://$ip/HrmPractise02/api/Job/JobPost";
    var data = {
      "Title": _title,
      "qualification": _selectedqualification,
      "Salary": _salaryController.text,
      "experience": _experienceController.text,
      "LastDateOfApply": _lastDateofapplyController.text,
      "Location": _locationController.text,
      "Description": _descriptionController.text,
    };
    var body = jsonEncode(data);
    var urlParse = Uri.parse(url);
    try {
      http.Response response = await http.post(urlParse,
          body: body, headers: {"Content-Type": "application/json"});
      var dataa = jsonDecode(response.body);
      print(dataa);

      if (response.statusCode == 200) {
        // Check if the response status code is 200 (successful)
        // Clear the controllers
        _salaryController.clear();
        _experienceController.clear();
        _lastDateofapplyController.clear();
        _locationController.clear();
        _descriptionController.clear();

        // Clear the selected qualification and title
        setState(() {
          _selectedqualification = null;
          _title = null;
        });

        // Show a success message using a Snackbar
        final snackBar = SnackBar(
          content: Text('Job posted successfully!'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: () {
              // You can add any action here, or leave it empty if no action is required.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

      // Optionally, show a success message, for example using a snackbar

    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
