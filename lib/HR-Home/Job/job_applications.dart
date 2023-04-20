import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Personal/update_personal.dart';
import 'package:fyp_practise_project/Models/job_application_model.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JobApplications extends StatefulWidget {
  int? uid;
  JobApplications({super.key, required this.uid});

  @override
  State<JobApplications> createState() => _JobApplicationsState();
}

class _JobApplicationsState extends State<JobApplications> {
  List<JobApplicationModel> jobapplicationlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Personal Information"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: fetchcuser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: jobapplicationlist.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.07),
                        child: Container(
                          height: 100,
                          decoration:
                              BoxDecoration(color: Colors.grey.shade300),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // RichText(
                                //   text: TextSpan(
                                //       style: DefaultTextStyle.of(context).style,
                                //       children: [
                                //         const TextSpan(
                                //           text: "First Name: ",
                                //           style: TextStyle(
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //         TextSpan(
                                //           text: "${userlist[index].fname}",
                                //           style: const TextStyle(
                                //             fontStyle: FontStyle.italic,
                                //           ),
                                //         ),
                                //       ]),
                                // ),
                                // Text("First Name: ${userlist[index].fname}"),
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "Job Title :                 ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              "${jobapplicationlist[index].job.title}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "Applicant Name :    ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              "${jobapplicationlist[index].user!.fname} "
                                              " ${jobapplicationlist[index].user!.lname}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),
                                const SizedBox(height: 4),
                                // RichText(
                                //   text: TextSpan(
                                //       style: DefaultTextStyle.of(context).style,
                                //       children: [
                                //         const TextSpan(
                                //           text: "CNIC:             ",
                                //           style: TextStyle(
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //         TextSpan(
                                //           text: "${userlist[index].cnic}",
                                //           style: const TextStyle(
                                //             fontStyle: FontStyle.italic,
                                //           ),
                                //         ),
                                //       ]),
                                // ),
                                const SizedBox(height: 4),
                                // RichText(
                                //   text: TextSpan(
                                //       style: DefaultTextStyle.of(context).style,
                                //       children: [
                                //         const TextSpan(
                                //           text: "Date Of Birth: ",
                                //           style: TextStyle(
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //         TextSpan(
                                //           text: "${userlist[index].dob}",
                                //           style: const TextStyle(
                                //             fontStyle: FontStyle.italic,
                                //           ),
                                //         ),
                                //       ]),
                                // ),
                                const SizedBox(height: 4),
                                // RichText(
                                //   text: TextSpan(
                                //       style: DefaultTextStyle.of(context).style,
                                //       children: [
                                //         const TextSpan(
                                //           text: "Gender : ",
                                //           style: TextStyle(
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //         TextSpan(
                                //           text: "${userlist[index].gender}",
                                //           style: const TextStyle(
                                //             fontStyle: FontStyle.italic,
                                //           ),
                                //         ),
                                //       ]),
                                // ),
                                const SizedBox(height: 4),
                                // RichText(
                                //   text: TextSpan(
                                //       style: DefaultTextStyle.of(context).style,
                                //       children: [
                                //         const TextSpan(
                                //           text: "Address : ",
                                //           style: TextStyle(
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //         TextSpan(
                                //           text: "${userlist[index].address}",
                                //           style: const TextStyle(
                                //             fontStyle: FontStyle.italic,
                                //           ),
                                //         ),
                                //       ]),
                                // ),

                                // Text("Last Name: ${userlist[index].lname}"),
                                // const SizedBox(height: 4),
                                // Text("Email: ${userlist[index].email}"),
                                // const SizedBox(height: 4),
                                // Text("Mobile: ${userlist[index].mobile}"),
                                // const SizedBox(height: 4),
                                // Text("CNIC: ${userlist[index].cnic}"),
                                // const SizedBox(height: 4),
                                // Text("Date Of Birth: ${userlist[index].dob}"),
                                // const SizedBox(height: 4),
                                // Text("Gender: ${userlist[index].gender}"),
                                // const SizedBox(height: 4),
                                // Text("Address: ${userlist[index].address}"),
                                // const SizedBox(height: 4),
                                // ElevatedButton(
                                //     onPressed: () {
                                //       Navigator.push(
                                //           context,
                                //           MaterialPageRoute(
                                //               builder: (context) =>
                                //                   PersonalUpdate(
                                //                     role: userlist[index].role,
                                //                     pass: userlist[index]
                                //                         .password,
                                //                     email:
                                //                         jobapplicationlist[index].email,
                                //                     uid: widget.uid,
                                //                   )));
                                //     },
                                //     child: Text("Edit"))
                              ],
                            ),
                          ),
                        ),
                      );
                    }));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  Future<List<JobApplicationModel>> fetchcuser() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/JobApplication/AllJobApplicationGet')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      jobapplicationlist.clear();
      for (Map<String, dynamic> index in Data) {
        jobapplicationlist.add(JobApplicationModel.fromJson(index));
      }
      return jobapplicationlist;
    } else {
      return jobapplicationlist;
    }
  }
}
