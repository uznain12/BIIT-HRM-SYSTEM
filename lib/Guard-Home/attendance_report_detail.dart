import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Models/attendance_model.dart';

import 'package:fyp_practise_project/uri.dart';

import 'package:http/http.dart' as http;

class AttendanceReportDeatil extends StatefulWidget {
  DateTime? Date;
  AttendanceReportDeatil({super.key, required this.Date});

  @override
  State<AttendanceReportDeatil> createState() => _AttendanceReportDeatilState();
}

class _AttendanceReportDeatilState extends State<AttendanceReportDeatil> {
  List<Attendancemodel> attendancedetaillist = [];
  List<AttendanceRecord> attendancerecordlist = [];

  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = AttendanceReportDeatil(
      Date: widget.Date,
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
              future: getattendancedetails(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: attendancerecordlist.length,
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
                                      const SizedBox(height: 4),
                                      Center(
                                        child: Text(
                                          "Date: ${attendancerecordlist[index].date}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      for (var record
                                          in attendancerecordlist[index]
                                              .records)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Time In: ${record.checkin}",
                                              style: const TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              "Time Out: ${record.checkout ?? '-'}",
                                              style: const TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      const SizedBox(height: 6),
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

  Future<List<AttendanceRecord>> getattendancedetails() async {
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Attendance/ByDateAttendanceGet?Date=${widget.Date}'));
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      attendancerecordlist.clear();
      var data = jsonDecode(response.body.toString());
      if (data is List) {
        for (Map<String, dynamic> index in data) {
          attendancerecordlist.add(AttendanceRecord.fromJson(index));
        }
        return attendancerecordlist;
      } else {
        print('Invalid response format');
      }
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
    return attendancerecordlist;
    // ignore: prefer_typing_uninitialized_variables
  }
}


// // 


// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:fyp_practise_project/Models/attendance_model.dart';

// import 'package:fyp_practise_project/uri.dart';

// import 'package:http/http.dart' as http;

// class AttendanceReportDeatil extends StatefulWidget {
//   DateTime? Date;
//   AttendanceReportDeatil({super.key, required this.Date});

//   @override
//   State<AttendanceReportDeatil> createState() => _AttendanceReportDeatilState();
// }

// class _AttendanceReportDeatilState extends State<AttendanceReportDeatil> {
//   List<Attendancemodel> attendancedetaillist = [];
//   List<AttendanceRecord> attendancerecordlist = [];

//   late Widget _widget;
//   @override
//   void initState() {
//     super.initState();
//     _widget = AttendanceReportDeatil(
//       Date: widget.Date,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         title: const Text(
//           'Job Detail',
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         decoration: BoxDecoration(color: Colors.white),
//         child: SingleChildScrollView(
//             child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: FutureBuilder(
//               future: getattendancedetails(),
//               builder: (context, AsyncSnapshot<Map<String, List>> snapshot) {
//                 if (snapshot.hasData) {
//                   // You can now access both lists as follows:
//                   List<Attendancemodel> attendancedetaillist = snapshot
//                       .data!['attendanceDetails'] as List<Attendancemodel>;
//                   List<AttendanceRecord> attendancerecordlist = snapshot
//                       .data!['attendanceRecords'] as List<AttendanceRecord>;

//                   return Column(
//                     children: [
//                       Expanded(
//                         child: ListView.builder(
//                           itemCount: attendancerecordlist.length +
//                               attendancedetaillist.length,
//                           itemBuilder: (context, index) {
//                             return Padding(
//                               padding: EdgeInsets.only(
//                                 top: MediaQuery.of(context).size.height * 0.02,
//                                 left: MediaQuery.of(context).size.width * 0.02,
//                                 right: MediaQuery.of(context).size.width * 0.02,
//                               ),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey.shade300,
//                                   border: Border.all(
//                                     width: 2,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                     left: MediaQuery.of(context).size.width *
//                                         0.02,
//                                     top: MediaQuery.of(context).size.height *
//                                         0.02,
//                                   ),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const SizedBox(height: 4),
//                                       Text(
//                                         "Date: ${attendancerecordlist[index].date}",
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 4),
//                                       for (var record
//                                           in attendancerecordlist[index]
//                                               .records)
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Text(
//                                               "Name: ${record.fname}", // accessing the fname attribute of the Record class
//                                               style: const TextStyle(
//                                                 fontSize: 16,
//                                               ),
//                                             ),
//                                             Text(
//                                               "Time In: ${record.checkin}",
//                                               style: const TextStyle(
//                                                 fontSize: 16,
//                                               ),
//                                             ),
//                                             Text(
//                                               "Time Out: ${record.checkout ?? '-'}",
//                                               style: const TextStyle(
//                                                 fontSize: 16,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       const SizedBox(height: 6),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   );
//                 } else {
//                   return Center(child: CircularProgressIndicator());
//                 }
//               }),
//         )),
//       ),
//     );
//   }

//   Future<Map<String, List>> getattendancedetails() async {
//     final response = await http.get(Uri.parse(
//         'http://$ip/HrmPractise02/api/Attendance/ByDateAttendanceGet?Date=${widget.Date}'));
//     print('Response status: ${response.statusCode}');
//     print('Response body: ${response.body}');
//     if (response.statusCode == 200) {
//       attendancerecordlist.clear();
//       attendancedetaillist.clear();
//       var data = jsonDecode(response.body.toString());
//       if (data is List) {
//         for (Map<String, dynamic> index in data) {
//           Attendancemodel attendanceModel = Attendancemodel.fromJson(index);
//           attendancedetaillist.add(attendanceModel);
//           attendancerecordlist.addAll(attendanceModel.attendanceRecords);
//         }
//         return {
//           'attendanceDetails': attendancedetaillist,
//           'attendanceRecords': attendancerecordlist,
//         };
//       } else {
//         print('Invalid response format');
//       }
//     } else {
//       print('Request failed with status: ${response.statusCode}');
//     }
//     return {
//       'attendanceDetails': attendancedetaillist,
//       'attendanceRecords': attendancerecordlist,
//     };
// //   }
// }
