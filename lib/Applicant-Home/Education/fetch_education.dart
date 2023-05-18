import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Education/add_education.dart';
import 'package:fyp_practise_project/Applicant-Home/Education/update_education.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../Models/education_model.dart';

class FetchEducation extends StatefulWidget {
  int? uid;
  FetchEducation({required this.uid});

  @override
  State<FetchEducation> createState() => _FetchEducationState();
}

class _FetchEducationState extends State<FetchEducation> {
  List<EducationGetModel> educationlist = [];
  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = FetchEducation(uid: widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
        centerTitle: true,
      ),
      body: Stack(children: [
        FutureBuilder(
            future: fetcheducation(widget.uid!),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: educationlist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.02,
                            right: MediaQuery.of(context).size.width * 0.02),
                        child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                border:
                                    Border.all(width: 2, color: Colors.black)),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Title: ${educationlist[index].degree}",
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Salary:${educationlist[index].startdate.toString()}",
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Location:   ${educationlist[index].institute}",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EducationUpdate(
                                                        eduID:
                                                            educationlist[index]
                                                                .eduId,
                                                        uid: widget.uid,
                                                      )));
                                        },
                                        icon: Icon(Icons.edit)),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: const Text('Delete job?'),
                                            content: const Text(
                                                'Are you sure you want to delete this job?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  _deleteJob(
                                                      educationlist[index]
                                                          .eduId);
                                                },
                                                child: Text('Delete'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.delete),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.72,
              left: MediaQuery.of(context).size.width * 0.8),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddEducation(
                              uid: widget.uid,
                            )));
              },
              icon: const Icon(
                Icons.add,
                size: 60,
              )),
        )
      ]),
    );
  }

  Future<List<EducationGetModel>> fetcheducation(int id) async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Education/EducationGet?uid=$id')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      educationlist.clear();
      for (Map<String, dynamic> index in Data) {
        educationlist.add(EducationGetModel.fromJson(index));
      }
      return educationlist;
    } else {
      return educationlist;
    }
  }

  Future<void> _deleteJob(int jobId) async {
    final response = await http.delete(
      Uri.parse(
          'http://$ip/HrmPractise02/api/Education/DeleteEducation?EduID=$jobId'),
    );

    if (response.statusCode == 200) {
      // Refresh job list
      setState(() {
        educationlist.removeWhere((job) => job.eduId == jobId);
      });
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete job')),
      );
    }
  }
}
