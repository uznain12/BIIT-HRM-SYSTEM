import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Personal/update_personal.dart';
import 'package:fyp_practise_project/HR-Home/Job/jobapplications_detail.dart';
import 'package:fyp_practise_project/Models/job_application_model.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApplicantApplications extends StatefulWidget {
  int? uid;
  ApplicantApplications({super.key, required this.uid});

  @override
  State<ApplicantApplications> createState() => _ApplicantApplicationsState();
}

class _ApplicantApplicationsState extends State<ApplicantApplications> {
  List<JobApplicationModel> jobapplicationlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Job Applications"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: fetchcuser(widget.uid!),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: jobapplicationlist.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.03,
                            right: MediaQuery.of(context).size.width * 0.03),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(width: 4, color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
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
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.1),
                                  child: RichText(
                                    text: TextSpan(
                                        style:
                                            DefaultTextStyle.of(context).style,
                                        children: [
                                          const TextSpan(
                                            text: "Job Name :     ",
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
                                ),
                                const SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.1),
                                  child: RichText(
                                    text: TextSpan(
                                        style:
                                            DefaultTextStyle.of(context).style,
                                        children: [
                                          const TextSpan(
                                            text: "Status :            ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "${jobapplicationlist[index].status} ",
                                            style: const TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.green),
                                          ),
                                        ]),
                                  ),
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
                                // Center(
                                //   child: SizedBox(
                                //     width: 200,
                                //     child: ElevatedButton(
                                //         onPressed: () {
                                //           Navigator.push(
                                //               context,
                                //               MaterialPageRoute(
                                //                   builder: (context) =>
                                //                       JobApplicationDetail(
                                //                         uid: widget.uid,
                                //                         applicationid:
                                //                             jobapplicationlist[
                                //                                     index]
                                //                                 .jid,
                                //                       )));
                                //         },
                                //         child: Text("Detail")),
                                //   ),
                                // )
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

  Future<List<JobApplicationModel>> fetchcuser(int id) async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/JobApplication/JobApplicationGet?appid=$id')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
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
