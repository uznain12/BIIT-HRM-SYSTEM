import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Experience/add_experience.dart';
import 'package:fyp_practise_project/Applicant-Home/Experience/update_experience.dart';
import 'package:fyp_practise_project/Models/experience_model.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../Models/education_model.dart';

class FetchExperience extends StatefulWidget {
  int? uid;
  FetchExperience({required this.uid});

  @override
  State<FetchExperience> createState() => _FetchExperienceState();
}

class _FetchExperienceState extends State<FetchExperience> {
  List<ExperienceModel> experiencelist = [];
  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = FetchExperience(uid: widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience"),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          height: 600,
          child: FutureBuilder(
              future: fetchexperience(widget.uid!),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: experiencelist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02,
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02),
                          child: Container(
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: [
                                                const TextSpan(
                                                  text: "Company Name: ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${experiencelist[index].company}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        // Text("First Name: ${userlist[index].fname}"),
                                        const SizedBox(height: 4),
                                        RichText(
                                          text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: [
                                                const TextSpan(
                                                  text: "Job Name :   ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${experiencelist[index].title}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        const SizedBox(height: 4),
                                        RichText(
                                          text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: [
                                                const TextSpan(
                                                  text: "Start Date :        ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${experiencelist[index].startdate.toString()}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        const SizedBox(height: 4),
                                        RichText(
                                          text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: [
                                                const TextSpan(
                                                  text:
                                                      "End Date :             ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${experiencelist[index].enddate.toString()}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        const SizedBox(height: 4),
                                        RichText(
                                          text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: [
                                                const TextSpan(
                                                  text:
                                                      "Working :             ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${experiencelist[index].currentwork.toString()}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        const SizedBox(height: 4),
                                        RichText(
                                          text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: [
                                                const TextSpan(
                                                  text:
                                                      "Other Skills :             ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${experiencelist[index].otherskill.toString()}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        const SizedBox(height: 40),

                                        Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ExperienceUpdate(
                                                                expoId:
                                                                    experiencelist[
                                                                            index]
                                                                        .expId,
                                                                uid: widget.uid,
                                                              )));
                                                },
                                                icon: Icon(
                                                  Icons.edit,
                                                  size: 30,
                                                )),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                    title: const Text(
                                                        'Delete job?'),
                                                    content: const Text(
                                                        'Are you sure you want to delete this Experience?'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text('Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                          _deleteExperience(
                                                              experiencelist[
                                                                      index]
                                                                  .expId);
                                                        },
                                                        child: Text('Delete'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.delete,
                                                size: 30,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        );
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.72,
              left: MediaQuery.of(context).size.width * 0.8),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddExperience(
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

  Future<List<ExperienceModel>> fetchexperience(int id) async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Expereince/ExperienceGet?uid=$id')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      experiencelist.clear();
      for (Map<String, dynamic> index in Data) {
        experiencelist.add(ExperienceModel.fromJson(index));
      }
      return experiencelist;
    } else {
      return experiencelist;
    }
  }

  Future<void> _deleteExperience(int id) async {
    final response = await http.delete(
      Uri.parse(
          'http://$ip/HrmPractise02/api/Expereince/DeleteExperience?ExpID=$id'),
    );

    if (response.statusCode == 200) {
      // Refresh job list
      setState(() {
        experiencelist.removeWhere((job) => job.expId == id);
      });
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete job')),
      );
    }
  }
}
