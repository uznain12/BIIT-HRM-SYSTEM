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
  final TextEditingController _degreeController = TextEditingController();
  final TextEditingController _instituteController = TextEditingController();
  final TextEditingController _boardController = TextEditingController();
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _endController = TextEditingController();

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _degreeController,
                  decoration: const InputDecoration(
                    labelText: 'Degree',
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
                  decoration: const InputDecoration(
                    labelText: 'Start Date',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _endController,
                  decoration: const InputDecoration(
                    labelText: 'End Date',
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

  Future<void> fetchEducation() async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Education/EducationGet?uid=${widget.uid}&eduID=${widget.eduID}'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        final education = EducationGetModel.fromJson(data[0]);
        _degreeController.text = education.degree;
        _instituteController.text = education.institute;
        _boardController.text = education.board;
        _startController.text = education.startdate.toString();
        _endController.text = education.enddate.toString();
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
      "Degree": _degreeController.text,
      "hasaddededucation": "true", // Change this to the appropriate value
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
