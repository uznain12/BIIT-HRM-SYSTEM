import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Models/experience_model.dart';
import 'package:fyp_practise_project/uri.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class ExperienceUpdate extends StatefulWidget {
  int? uid;
  int? expoId;
  ExperienceUpdate({required this.uid, required this.expoId});

  @override
  State<ExperienceUpdate> createState() => _ExperienceUpdateState();
}

class _ExperienceUpdateState extends State<ExperienceUpdate> {
  bool isworking = false;
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _OtherskillController = TextEditingController();
  final TextEditingController _currentWorkController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchExperience();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _companyController,
                  decoration: const InputDecoration(
                    labelText: 'Company',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Job Title',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
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
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => UpdateEducation(),
                child: Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> fetchExperience() async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Expereince/ExperienceGet?uid=${widget.uid}&expId=${widget.expoId}'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        for (var item in data) {
          final experience = ExperienceModel.fromJson(item);
          if (experience.expId == widget.expoId) {
            // assuming 'id' is the field that contains the experience id
            _companyController.text = experience.company;
            _titleController.text = experience.title;
            _startDateController.text = experience.startdate.toString();
            _endDateController.text = experience.enddate.toString();
            _OtherskillController.text = experience.otherskill;
            _currentWorkController.text = experience.currentwork.toString();
            setState(() {
              isworking = experience.currentwork.toLowerCase() == 'true';
            });

            break; // stop the loop as we found the record we were looking for
          }
        }
      }
    } else {
      print('Failed to load Experience. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      throw Exception('Failed to load Experience');
    }
  }

  void UpdateEducation({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/Expereince/UpdateExperience";
    var data = {
      "Uid": widget.uid,
      "ExpID": widget.expoId,
      "Company": _companyController.text,
      "Title": _titleController.text,
      "Startdate": _startDateController.text,
      "Enddate": _endDateController.text,
      "otherskill": _OtherskillController.text,
      "hasexperienced": "true", // Change this to the appropriate value
    };
    var boddy = jsonEncode(data);
    var urlParse = Uri.parse(url);
    try {
      http.Response response = await http.put(urlParse,
          body: boddy, headers: {"Content-Type": "application/json"});
      var dataa = jsonDecode(response.body);
      print(dataa);
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
