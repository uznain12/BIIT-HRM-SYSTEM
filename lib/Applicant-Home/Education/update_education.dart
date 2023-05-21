import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Education/update_education.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../Models/education_model.dart';

class EducationUpdate extends StatefulWidget {
  int? uid;
  int? eduID;
  EducationUpdate({required this.uid, required this.eduID});

  @override
  State<EducationUpdate> createState() => _EducationUpdateState();
}

class _EducationUpdateState extends State<EducationUpdate> {
  final TextEditingController _majorController = TextEditingController();
  final TextEditingController _instituteController = TextEditingController();
  final TextEditingController _boardController = TextEditingController();
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _endController = TextEditingController();
  String? _selectedOption;
  List<String> _options = [
    'Matric',
    'Inter',
    'Bachelor',
    'Master',
  ]; // op

  @override
  void initState() {
    super.initState();
    fetchEducation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
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
                    "Degree",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _majorController,
                  decoration: const InputDecoration(
                    labelText: 'Major',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _instituteController,
                  decoration: const InputDecoration(
                    labelText: 'Institute',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _boardController,
                  decoration: const InputDecoration(
                    labelText: 'Board',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _startController,
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now());
                    if (picked != null) {
                      setState(() {
                        _startController.text = picked.toString().split(' ')[0];
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _endController,
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now());
                    if (picked != null) {
                      setState(() {
                        _endController.text = picked.toString().split(' ')[0];
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
                ),
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

  // Future<void> fetchEducation() async {
  //   final response = await http.get(Uri.parse(
  //       'http://$ip/HrmPractise02/api/Education/EducationGet?uid=${widget.uid}&eduID=${widget.eduID}'));
  //   if (response.statusCode == 200) {
  //     final List<dynamic> data = jsonDecode(response.body);
  //     if (data.isNotEmpty) {
  //       final education = EducationGetModel.fromJson(data[0]);
  //       setState(() {
  //         _selectedOption = education.degree;
  //       });
  //       _majorController.text = education.major;
  //       _instituteController.text = education.institute;
  //       _boardController.text = education.board;
  //       _startController.text = education.startdate.toString();
  //       _endController.text = education.enddate.toString();
  //     }
  //   } else {
  //     throw Exception('Failed to load education');
  //   }
  // }
  Future<void> fetchEducation() async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Education/EducationGet?uid=${widget.uid}&eduID=${widget.eduID}'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        for (var item in data) {
          final education = EducationGetModel.fromJson(item);
          if (education.eduId == widget.eduID) {
            // assuming 'id' is the field that contains the education id
            setState(() {
              _selectedOption = education.degree;
            });
            _majorController.text = education.major;
            _instituteController.text = education.institute;
            _boardController.text = education.board;
            _startController.text = education.startdate.toString();
            _endController.text = education.enddate.toString();
            break; // stop the loop as we found the record we were looking for
          }
        }
      }
    } else {
      throw Exception('Failed to load education');
    }
  }

  void UpdateEducation({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/Education/UpdateEducation";
    var data = {
      "Uid": widget.uid,
      "eduID": widget.eduID,
      "Institute": _instituteController.text,
      "Board": _boardController.text,
      "Startdate": _startController.text,
      "Enddate": _endController.text,
      "Degree": _selectedOption,
      "major": _majorController.text,
      // Change this to the appropriate value
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
