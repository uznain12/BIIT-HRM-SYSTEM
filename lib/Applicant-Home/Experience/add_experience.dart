import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Education/fetch_education.dart';
import 'package:fyp_practise_project/Applicant-Home/Experience/fetch_experience.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: must_be_immutable
class AddExperience extends StatefulWidget {
  int? uid;
  AddExperience({super.key, required this.uid});
  // const AddEducation({super.key});

  @override
  State<AddExperience> createState() => _AddExperienceState();
}

// String? _selectedOption;
// List<String> _options = [
//   'Matric',
//   'Inter',
//   'Bachelor',
//   'Master',
// ]; // op
bool isworking = false;
TextEditingController _companyController = TextEditingController();
TextEditingController _titleController = TextEditingController();
TextEditingController _startDateController = TextEditingController();
TextEditingController _endDateController = TextEditingController();
TextEditingController _OtherskillController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _AddExperienceState extends State<AddExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Your Experience"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.height * 0.01),
              child: Container(
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    // DropdownButton<String>(
                    //   hint: const Text(
                    //     "Degree",
                    //     style: TextStyle(fontSize: 20),
                    //   ),
                    //   isExpanded: true,
                    //   value: _selectedOption,
                    //   items: _options.map((String option) {
                    //     return DropdownMenuItem(
                    //       value: option,
                    //       child: Text(option),
                    //     );
                    //   }).toList(),
                    //   onChanged: (newValue) {
                    //     setState(() {
                    //       _selectedOption = newValue;
                    //     });
                    //   },
                    // ),

                    TextFormField(
                      controller: _companyController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.business),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 54,
                          minHeight: 54,
                        ),
                        labelText: 'Company',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Name Of Company';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.work),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 54,
                          minHeight: 54,
                        ),
                        labelText: 'Job Title',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter name of your job';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
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
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Checkbox(
                          value: isworking,
                          onChanged: (value) {
                            setState(() {
                              isworking = value!;
                            });
                          },
                        ),
                        const Text(
                          'Working Now',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Visibility(
                      visible: !isworking,
                      child: TextFormField(
                        controller: _endDateController,
                        onTap: () async {
                          FocusScope.of(context).requestFocus(FocusNode());
                          final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now());
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
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _OtherskillController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.construction),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 54,
                          minHeight: 54,
                        ),
                        labelText: 'Any Other Skill',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter other skill if you have';
                        }
                        return null;
                      },
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
                              AddExperience(Uid: widget.uid);
                              Navigator.pop(context);
                            }
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ));
  }

  void AddExperience({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/Expereince/ExperiencePost";
    var data = {
      "Uid": widget.uid,
      "Company": _companyController.text,
      "Title": _titleController.text,
      "Startdate": _startDateController.text,
      "currentwork": "currently working",
      "Enddate": _endDateController.text,
      "otherskill": _OtherskillController.text,
      // "Degree": _selectedOption,
      "hasexperienced": "true", // Change this to the appropriate value
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
