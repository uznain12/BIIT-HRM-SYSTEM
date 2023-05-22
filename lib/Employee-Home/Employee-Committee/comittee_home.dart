import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Employee-Home/Employee-Committee/committe_job_employee.dart';
import 'package:fyp_practise_project/HR-Home/New-Committe/all_head.dart';

import 'package:fyp_practise_project/HR-Home/New-Committe/new_create_committe.dart';
import 'package:fyp_practise_project/Models/committee_with_member_for_employ_Model2.dart';

import 'package:fyp_practise_project/uri.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class EmployeeMainCommittePage extends StatefulWidget {
  int? uid;
  EmployeeMainCommittePage({
    super.key,
    required this.uid,
  });

  @override
  State<EmployeeMainCommittePage> createState() =>
      _EmployeeMainCommittePageState();
}

class _EmployeeMainCommittePageState extends State<EmployeeMainCommittePage> {
  List<Foremployeecommitteewithmember> employeecommittelist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Committees"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            FutureBuilder(
                future: getcommitte(widget.uid!),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: employeecommittelist.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02,
                                left: MediaQuery.of(context).size.width * 0.02,
                                right:
                                    MediaQuery.of(context).size.width * 0.02),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CommitteJobforEmployeeMarking(
                                              memberid:
                                                  employeecommittelist[index]
                                                      .committeeImemberId,
                                              uid: widget.uid,
                                              commid:
                                                  employeecommittelist[index]
                                                      .committeeId,
                                            )));
                              },
                              child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      border: Border.all(
                                          width: 2, color: Colors.black)),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 18, left: 5),
                                            child: RichText(
                                              text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: [
                                                    const TextSpan(
                                                      text: "Committee :  ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "${employeecommittelist[index].committee!.committeeTitle}",
                                                      style: const TextStyle(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          fontSize: 18),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ],
        ));
  }

  Future<List<Foremployeecommitteewithmember>> getcommitte(int id) async {
    // Get the current user's UID.
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Committeemembers/CommitteeWithMemberGet?uid=$id'));
    var Data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      employeecommittelist.clear();
      for (Map<String, dynamic> index in Data) {
        employeecommittelist
            .add(Foremployeecommitteewithmember.fromJson(index));
      }
    } else {
      print(
          'Error occurred: ${response.statusCode} - ${response.body}'); // print the error

    }
    return employeecommittelist;
  }
}
