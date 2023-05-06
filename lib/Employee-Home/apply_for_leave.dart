import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Education/fetch_education.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: must_be_immutable
class EmployeeApplyLeave extends StatefulWidget {
  int? uid;
  EmployeeApplyLeave({super.key, required this.uid});
  // const AddEducation({super.key});

  @override
  State<EmployeeApplyLeave> createState() => _EmployeeApplyLeaveState();
}

String? _selectedOption;
List<String> _options = [
  'Sick',
  'Earned',
  'Casual',
  'Annual',
]; // op

TextEditingController _instituteController = TextEditingController();

TextEditingController _startDateController = TextEditingController();
TextEditingController _endDateController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _EmployeeApplyLeaveState extends State<EmployeeApplyLeave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Apply For Leave"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.07,
                left: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.height * 0.01),
            child: Container(
              height: 800,
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
                        "Leave Type",
                        style: TextStyle(fontSize: 20),
                      ),
                      isExpanded: true,
                      value: _selectedOption,
                      items: _options.map((String option) {
                        return DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedOption = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select a degree';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _instituteController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_sharp),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 54,
                        minHeight: 54,
                      ),
                      labelText: 'Reason',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your reason';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _startDateController,
                          onTap: () async {
                            FocusScope.of(context).requestFocus(FocusNode());
                            final DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now());
                            if (picked != null) {
                              setState(() {
                                _startDateController.text =
                                    picked.toString().split(' ')[0];
                              });
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'Start Date',
                            prefixIcon: Icon(Icons.calendar_today),
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 54,
                              minHeight: 54,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Select Start Date';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: _endDateController,
                          onTap: () async {
                            FocusScope.of(context).requestFocus(FocusNode());
                            final DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2300));
                            if (picked != null) {
                              setState(() {
                                _endDateController.text =
                                    picked.toString().split(' ')[0];
                              });
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'End Date',
                            prefixIcon: Icon(Icons.calendar_today),
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 54,
                              minHeight: 54,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Select End Date';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            AddLeaverequest(Uid: widget.uid);
                            Navigator.pop(context);
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }

  void AddLeaverequest({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/Leave/LeavePost";
    var data = {
      "Uid": widget.uid,
      "reason": _instituteController.text,

      "startdate": _startDateController.text,
      "enddate": _endDateController.text,
      "leavetype": _selectedOption,
      "status": "pending", // Change this to the appropriate value
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
