import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Education/fetch_education.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: must_be_immutable
class AddEducation extends StatefulWidget {
  int? uid;
  AddEducation({super.key, required this.uid});
  // const AddEducation({super.key});

  @override
  State<AddEducation> createState() => _AddEducationState();
}

String? _selectedOption;
List<String> _options = [
  'Matric',
  'Inter',
  'Bachelor',
  'Master',
]; // op

TextEditingController _instituteController = TextEditingController();
TextEditingController _boardController = TextEditingController();
TextEditingController _startDateController = TextEditingController();
TextEditingController _endDateController = TextEditingController();

class _AddEducationState extends State<AddEducation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Your Education"),
          centerTitle: true,
        ),
        body: Column(children: [
          DropdownButton<String>(
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
          ),
          TextFormField(
            controller: _instituteController,
            decoration: InputDecoration(
              labelText: 'Institute',
              hintText: 'Enter the name of the institute',
            ),
          ),
          TextFormField(
            controller: _boardController,
            decoration: InputDecoration(
              labelText: 'Board',
              hintText: 'Enter the name of the board',
            ),
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
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  controller: _endDateController,
                  decoration: InputDecoration(
                    labelText: 'End Date',
                    hintText: 'Enter the end date',
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                AddEducation(Uid: widget.uid);
              },
              child: Text("Save")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FetchEducation(
                              uid: widget.uid,
                            )));
              },
              child: Text("Check Education"))
        ]));
  }

  void AddEducation({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/Education/EducationPost";
    var data = {
      "Uid": widget.uid,
      "Institute": _instituteController.text,
      "Board": _boardController.text,
      "Startdate": _startDateController.text,
      "Enddate": _endDateController.text,
      "Degree": _selectedOption,
      "hasaddededucation": "true", // Change this to the appropriate value
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
