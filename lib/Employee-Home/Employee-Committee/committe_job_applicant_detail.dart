import 'dart:convert';
import 'dart:math';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Job/job_apply.dart';

import 'package:fyp_practise_project/Models/job_application_model.dart';

import 'package:fyp_practise_project/uri.dart';

import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class ApplicantJobDetail extends StatefulWidget {
  int? uid;
  int? applicationid;
  int? memberid;
  ApplicantJobDetail(
      {required this.uid, required this.applicationid, required this.memberid});
  // const ApplicantApplyJob({super.key});

  @override
  State<ApplicantJobDetail> createState() => _ApplicantJobDetailState();
}

class _ApplicantJobDetailState extends State<ApplicantJobDetail> {
  List<JobApplicationModel> Jobapplicationdetaillist = [];
  TextEditingController _remarksController = TextEditingController();
  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = ApplicantJobDetail(
      uid: widget.uid,
      applicationid: widget.applicationid,
      memberid: widget.memberid,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'Applicant Details',
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2, color: Colors.black)),
        child: SingleChildScrollView(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
              future: Jobapplicationsdetail(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: Jobapplicationdetaillist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02,
                                left: MediaQuery.of(context).size.width * 0.02,
                                right: MediaQuery.of(context).size.width * 0.02,
                              ),
                              child: Container(
                                height: 1000,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.02,
                                    top: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text:
                                                    "Job Title :                 ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${Jobapplicationdetaillist[index].job.title}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      const Center(
                                          child: Text(
                                        "Applicatn Persoanl Information",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      )),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Name :            ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${Jobapplicationdetaillist[index].user!.fname} "
                                                    " ${Jobapplicationdetaillist[index].user!.lname}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Email:              ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${Jobapplicationdetaillist[index].user!.email}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Gender:           ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${Jobapplicationdetaillist[index].user!.gender}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Conatct:          ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${Jobapplicationdetaillist[index].user!.mobile}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "DOB:                ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${Jobapplicationdetaillist[index].user!.dob}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Address:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${Jobapplicationdetaillist[index].user!.address}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 10),
                                      const Center(
                                          child: Text(
                                        "Applicatn Educational Information",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      )),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Degree:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .educations
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.educations[0].degree}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Institute:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .educations
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.educations[0].institute}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Board:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .educations
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.educations[0].board}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "start date:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .educations
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.educations[0].startdate}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "End Date:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .educations
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.educations[0].enddate}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 10),
                                      const Center(
                                          child: Text(
                                        "Applicatn Previous Experience",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      )),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Company:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .experiences
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.experiences[0].company}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Title:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .experiences
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.experiences[0].title}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Start Date:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .experiences
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.experiences[0].startdate}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: " Till Now:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .experiences
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.experiences[0].currentwork}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "End Date:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .experiences
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.experiences[0].enddate}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Other Skills:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Jobapplicationdetaillist[
                                                            index]
                                                        .user!
                                                        .experiences
                                                        .isNotEmpty
                                                    ? "${Jobapplicationdetaillist[index].user!.experiences[0].otherskill}"
                                                    : "Not provided",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      TextFormField(
                                        controller: _remarksController,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(Icons.school_sharp),
                                          prefixIconConstraints: BoxConstraints(
                                            minWidth: 54,
                                            minHeight: 54,
                                          ),
                                          labelText: 'Remarks',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter Your Remarks';
                                          }
                                          return null;
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2),
                                        child: SizedBox(
                                          width: 200,
                                          height: 50,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Addremarks();
                                              },
                                              child: const Text(
                                                "Submit",
                                                style: TextStyle(
                                                    fontFamily:
                                                        'RobotoSlab-Black',
                                                    fontSize: 18),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
        )),
      ),
    );
  }

  Future<List<JobApplicationModel>> Jobapplicationsdetail() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/JobApplication/JobApplicationHrSideGet?applicationid=${widget.applicationid}')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      Jobapplicationdetaillist.clear();
      for (Map<String, dynamic> index in Data) {
        Jobapplicationdetaillist.add(JobApplicationModel.fromJson(index));
      }
      return Jobapplicationdetaillist;
    } else {
      return Jobapplicationdetaillist;
    }
  }

  // void shortlist() async {
  //   var url = "http://$ip/HrmPractise02/api/Shortlist/SHortlistPost";
  //   var data = {
  //     "Uid": widget.uid,
  //     "ApplicationID": widget.applicationid,
  //   };
  //   var boddy = jsonEncode(data);
  //   var urlParse = Uri.parse(url);
  //   try {
  //     http.Response response = await http.post(urlParse,
  //         body: boddy, headers: {"Content-Type": "application/json"});
  //     var dataa = jsonDecode(response.body);
  //     print(dataa);
  //   } catch (e) {
  //     print('Error occurred: $e');
  //   }
  // }

  void Addremarks({int? CommitteeMemberId, JobApplicationID}) async {
    var url = "http://$ip/HrmPractise02/api/Remark/RemarkPost";
    var data = {
      "CommitteeMemberId": widget.memberid,
      "JobApplicationID": widget.applicationid,
      "Remarks": _remarksController.text,
      // Change this to the appropriate value
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
