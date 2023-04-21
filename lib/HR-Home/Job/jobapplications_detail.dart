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

class JobApplicationDetail extends StatefulWidget {
  int? uid;
  int? applicationid;
  JobApplicationDetail({required this.uid, required this.applicationid});
  // const ApplicantApplyJob({super.key});

  @override
  State<JobApplicationDetail> createState() => _JobApplicationDetailState();
}

class _JobApplicationDetailState extends State<JobApplicationDetail> {
  List<JobApplicationModel> Jobapplicationdetaillist = [];
  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = JobApplicationDetail(
      uid: widget.uid,
      applicationid: widget.applicationid,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'Job Detail',
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
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
                                height: 440,
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
                                      RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Applicant Name :    ",
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
                                                shortlist();
                                              },
                                              child: const Text(
                                                "Short List",
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
        'http://$ip/HrmPractise02/api/JobApplication/JobApplicationGet?uid=${widget.uid}&appid=${widget.applicationid}')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
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

  void shortlist() async {
    var url = "http://$ip/HrmPractise02/api/Shortlist/SHortlistPost";
    var data = {
      "Uid": widget.uid,
      "ApplicationID": widget.applicationid,
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
