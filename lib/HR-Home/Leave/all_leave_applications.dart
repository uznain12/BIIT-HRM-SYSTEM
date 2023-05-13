import 'package:flutter/material.dart';

import 'package:fyp_practise_project/HR-Home/Job/jobapplications_detail.dart';

import 'package:fyp_practise_project/Models/leave_model.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AllLeaveApplications extends StatefulWidget {
  AllLeaveApplications({
    super.key,
  });

  @override
  State<AllLeaveApplications> createState() => _AllLeaveApplicationsState();
}

class _AllLeaveApplicationsState extends State<AllLeaveApplications> {
  List<Leavemodel> laveapplicationlist = [];

  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = AllLeaveApplications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Leave Applications"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: fetchleaveapplication(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: laveapplicationlist.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border:
                                  Border.all(width: 4, color: Colors.black)),
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
                                            text:
                                                "Leave Type:                 ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "${laveapplicationlist[index].leavetype}",
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
                                            text: "Applicant Name :    ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "${laveapplicationlist[index].user.fname} ",
                                            style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
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
                                            text: "Status :    ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "${laveapplicationlist[index].status} ",
                                            style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                            ),
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
                                Center(
                                  child: SizedBox(
                                      // width: 200,
                                      // child: ElevatedButton(
                                      //     onPressed: () {
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   JobApplicationDetail(
                                      //                     uid: widget.uid,
                                      //                     applicationid:
                                      //                         fetchleaveapplication[
                                      //                                 index]
                                      //                             .jid,
                                      //                   )));
                                      //     },
                                      //     child: Text("Detail")),
                                      ),
                                )
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

  Future<List<Leavemodel>> fetchleaveapplication() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Leave/AllLeaveGet')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      laveapplicationlist.clear();
      for (Map<String, dynamic> index in Data) {
        laveapplicationlist.add(Leavemodel.fromJson(index));
      }
      return laveapplicationlist;
    } else {
      return laveapplicationlist;
    }
  }
}