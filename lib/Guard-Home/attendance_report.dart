import 'dart:convert';
import 'dart:math';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Guard-Home/attendance_report_detail.dart';
import 'package:fyp_practise_project/Models/Attendance_Model.dart';
// import 'package:fyp_practise_project/Models/allattendance_model.dart';

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
  List<AttendanceWithIdModel> attendancewithidlist = [];
  late Future<LoginModel> selectedEmployee;

  void _filterAttendance() {
    if (mounted) {
      setState(() {
        attendancewithidlist = attendancewithidlist.where((record) {
          DateTime recordDate = DateTime.parse(record.date.toIso8601String());
          return recordDate.isAfter(_startDate) &&
              recordDate.isBefore(_endDate);
        }).toList();
      });
    }
  }

  String _formatDate(DateTime date) {
    //ya date ko sai sa show karwanay ka liya bnaya ha like is format ma show hogi date
    return DateFormat('yyyy-MM-dd').format(date);
  }

  String _searchQuery = ''; // User for search

  // Bottom navbar
  late Widget _widget;
  @override
  void initState() {
    super.initState();
  }

  DateTime _startDate = DateTime(2000); // date filter ka liya use hoi ha
  DateTime _endDate = DateTime(2024);
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              final DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: _startDate,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2400),
                              );
                              if (pickedDate != null &&
                                  pickedDate != _startDate) {
                                setState(() {
                                  _startDate = pickedDate;
                                  _filterAttendance();
                                });
                              }
                            },
                            child: Text("From: ${_formatDate(_startDate)}"),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: _endDate,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2400),
                              );
                              if (pickedDate != null &&
                                  pickedDate != _endDate) {
                                setState(() {
                                  _endDate = pickedDate;
                                  _filterAttendance();
                                });
                              }
                            },
                            child: Text("To: ${_formatDate(_endDate)}"),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: attendancewithidlist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02,
                                left: MediaQuery.of(context).size.width * 0.02,
                                right: MediaQuery.of(context).size.width * 0.02,
                              ),
                              child: InkWell(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AttendanceReportDeatil(
                                                  uid: attendancewithidlist[
                                                          index]
                                                      .uid,
                                                  Date: attendancewithidlist[
                                                          index]
                                                      .date)));
                                }),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${_formatDate(DateTime.parse(attendancewithidlist[index].date.toString()))}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
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
                                                  text: "Status:        ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${attendancewithidlist[index].status}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
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

  Future<List<AttendanceWithIdModel>> attendancebyid(int id) async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Attendance/AttendanceGet?uid=$id'));
    var Data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      attendancewithidlist.clear();

      Set<String> uniqueDates = {}; // Create a set to store unique dates
      List<Map<String, dynamic>> uniqueData =
          []; // Create a list to store unique records

      for (Map<String, dynamic> index in Data) {
        // Check if the date is already in the set
        if (!uniqueDates.contains(index['date'])) {
          uniqueDates.add(index['date']); // Add the date to the set
          uniqueData.add(index); // Add the record to the unique records list
        }
      }

      for (Map<String, dynamic> index in uniqueData) {
        attendancewithidlist.add(AttendanceWithIdModel.fromJson(index));
      }
      _filterAttendance();

      return attendancewithidlist;
    } else {
      return attendancewithidlist;
    }
  }

  // Future<List<AttendanceWithIdModel>> attendancebyid(int id) async {
  //   final response = await http.get(Uri.parse(
  //       'http://$ip/HrmPractise02/api/Attendance/AttendanceGet?uid=$id'));
  //   var Data = jsonDecode(response.body.toString());
  //   print(Data);

  //   if (response.statusCode == 200) {
  //     attendancewithidlist.clear();
  //     if (Data is Map<String, dynamic>) {
  //       List<dynamic> attendanceRecords = Data["attendanceRecords"] ?? [];
  //       for (Map<String, dynamic> index in attendanceRecords) {
  //         attendancewithidlist.add(AttendanceWithIdModel.fromJson(index));
  //       }
  //       return attendancewithidlist;
  //     } else {
  //       print('Invalid response format');
  //     }
  //   } else {
  //     print('Request failed with status: ${response.statusCode}');
  //   }
  //   return attendancewithidlist;
  // }

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
