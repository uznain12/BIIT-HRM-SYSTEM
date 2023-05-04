import 'dart:convert';
import 'dart:math';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Guard-Home/attendance_report_detail.dart';
// import 'package:fyp_practise_project/Models/allattendance_model.dart';
import 'package:fyp_practise_project/Models/attendance_model.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;

class AttendanceReport extends StatefulWidget {
  final LoginModel selectedEmployee;
  AttendanceReport({Key? key, required this.selectedEmployee})
      : super(key: key);
  // const ApplicantApplyJob({super.key});

  @override
  State<AttendanceReport> createState() => _AttendanceReportState();
}

class _AttendanceReportState extends State<AttendanceReport> {
  // List<AllAttendanceModel> allattendancelist = [];
  List<AttendanceRecord> attendancereordlist = [];
  late Future<LoginModel> selectedEmployee;

  String _searchQuery = ''; // User for search

  // Bottom navbar
  late Widget _widget;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    LoginModel selectedEmployee = widget.selectedEmployee;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Attendance Report',
          style: TextStyle(
              fontFamily: 'RobotoSlab-Black',
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
              future: attendancebyid(widget.selectedEmployee.uid!),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: attendancereordlist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02,
                                left: MediaQuery.of(context).size.width * 0.02,
                                right: MediaQuery.of(context).size.width * 0.02,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 8),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1),
                                          child: RichText(
                                            text: TextSpan(
                                                style:
                                                    DefaultTextStyle.of(context)
                                                        .style,
                                                children: [
                                                  const TextSpan(
                                                    text: "Date:        ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${attendancereordlist[index].date}",
                                                    style: const TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {
                                        // Handle edit job

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AttendanceReportDeatil(
                                                        Date:
                                                            attendancereordlist[
                                                                    index]
                                                                .date)));
                                      },
                                      icon: const Icon(
                                        Icons.details,
                                      ),
                                      tooltip: 'Job Details',
                                    ),
                                  ],
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

  Future<List<AttendanceRecord>> attendancebyid(int id) async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Attendance/AlldatewithidAttendanceGet?uid=$id'));
    var Data = jsonDecode(response.body.toString());
    print(Data);

    if (response.statusCode == 200) {
      attendancereordlist.clear();
      if (Data is Map<String, dynamic>) {
        List<dynamic> attendanceRecords = Data["attendanceRecords"] ?? [];
        for (Map<String, dynamic> index in attendanceRecords) {
          attendancereordlist.add(AttendanceRecord.fromJson(index));
        }
        return attendancereordlist;
      } else {
        print('Invalid response format');
      }
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
    return attendancereordlist;
  }

//   Future<List<AttendanceRecord>> attendancebyid(int id) async {
//     //response keyword khud sa bnaya ha
//     final response = await http.get(Uri.parse(
//         'http://$ip/HrmPractise02/api/Attendance/AlldatewithidAttendanceGet?uid=$id')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
//     var Data = jsonDecode(response.body.toString());
//     print(Data); // decode kar ka data variable ma store kar rahay hn
//     if (response.statusCode == 200) {
//       attendancereordlist.clear();
//       if (Data is List) {
//         for (Map<String, dynamic> index in Data) {
//           attendancereordlist.add(AttendanceRecord.fromJson(index));
//         }
//         return attendancereordlist;
//       } else {
//         print('Invalid response format');
//       }
//     } else {
//       print('Request failed with status: ${response.statusCode}');
//     }
//     return attendancereordlist;
//     // ignore: prefer_typing_uninitialized_variables
//   }
// }
  // Future<List<AllAttendanceModel>> attendancebyid(int id) async {
  //   //response keyword khud sa bnaya ha
  //   final response = await http.get(Uri.parse(
  //       'http://$ip/HrmPractise02/api/Attendance/AttendanceGet?uid=$id')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
  //   var Data = jsonDecode(response.body
  //       .toString()); // decode kar ka data variable ma store kar rahay hn
  //   if (response.statusCode == 200) {
  //     allattendancelist.clear();
  //     for (Map<String, dynamic> index in Data) {
  //       allattendancelist.add(AllAttendanceModel.fromJson(index));
  //     }
  //     return allattendancelist;
  //   } else {
  //     return allattendancelist;
  //   }
  // }

}
