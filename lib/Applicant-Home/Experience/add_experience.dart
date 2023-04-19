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

TextEditingController _companyController = TextEditingController();
TextEditingController _titleController = TextEditingController();
TextEditingController _startDateController = TextEditingController();
TextEditingController _endDateController = TextEditingController();

class _AddExperienceState extends State<AddExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Your Education"),
          centerTitle: true,
        ),
        body: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
              decoration: InputDecoration(
                labelText: 'Company',
                hintText: 'Enter the name of the institute',
              ),
            ),
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Job Title',
                hintText: 'Enter the name of the board',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _startDateController,
                    decoration: InputDecoration(
                      labelText: 'Start date',
                      hintText: 'Enter the start date',
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
                          builder: (context) => FetchExperience(
                                uid: widget.uid,
                              )));
                },
                child: Text("Check Experience"))
          ]),
        ));
  }

  void AddEducation({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/Expereince/ExperiencePost";
    var data = {
      "Uid": widget.uid,
      "Institute": _companyController.text,
      "Board": _titleController.text,
      "Startdate": _startDateController.text,
      "Enddate": _endDateController.text,
      // "Degree": _selectedOption,
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
