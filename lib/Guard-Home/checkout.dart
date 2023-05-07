import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Models/attendance_model.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GuardCheckOut extends StatefulWidget {
  final bool isCheckIn;
  String? checkin;
  int? Attendanceid;
  final LoginModel
      selectedEmployee; //selected employee jis pa click ki ha woi open hoga iskay hrough jesay user ko id ki base pa la ka atay hn usi tarah
  GuardCheckOut(
      {Key? key,
      required this.selectedEmployee,
      this.isCheckIn = false,
      required this.Attendanceid,
      required this.checkin})
      : super(key: key);

  @override
  State<GuardCheckOut> createState() => _GuardCheckOutState();
}

class _GuardCheckOutState extends State<GuardCheckOut> {
  List<LoginModel> userlist = [];
  List<AttendanceWithIdModel> attendancewithidlist = [];
  late Future<LoginModel>
      selectedEmployee; //card ma jis employee par click kiya uski information fetch karnay ka liya use kiya
  TextEditingController _checkouttimeController = TextEditingController();
  TextEditingController _checkoutdateController = TextEditingController();
  bool _isInitial = true;

  @override
  void initState() {
    super.initState();
    fetchAttendance();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInitial) {
      _checkouttimeController.text = TimeOfDay.now().format(context);
      _checkoutdateController.text = DateTime.now().toString().split(' ')[0];
      _isInitial = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    LoginModel selectedEmployee = widget
        .selectedEmployee; // Selected Employee ko lanay ka liya idr hamay ya lgana paray ga
    return Scaffold(
        appBar: AppBar(
          title: const Text("Attendance Check Out Screen"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: fetchEmployeeByUid(widget.selectedEmployee.uid!),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: userlist.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.07,
                            left: MediaQuery.of(context).size.height * 0.02,
                            right: MediaQuery.of(context).size.height * 0.02),
                        child: Container(
                          height: 600,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03),
                            child: Stack(children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.3),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                    child: userlist[index].image.isNotEmpty
                                        ? ClipOval(
                                            child: Image(
                                                fit: BoxFit.cover,
                                                height: 100,
                                                width: 100,
                                                image: NetworkImage(imagepath +
                                                    userlist[index].image)),
                                          )
                                        : Icon(Icons.person),
                                  )),
                              // existing code
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1),
                                      child: RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "Name:         ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${userlist[index].fname} ${userlist[index].lname}",
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
                                                text: "Number:        ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "${userlist[index].mobile}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]))),
                                    // existing code
                                    const SizedBox(height: 38),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: TextFormField(
                                        controller: _checkouttimeController,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.access_time),
                                          labelText: 'Check-Out Time',
                                          labelStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Colors.blue, width: 2.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Adjust the corner radius
                                            borderSide: const BorderSide(
                                                color: Colors.blue, width: 2.0),
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter check-Out time';
                                          }
                                          return null;
                                        },
                                        onTap: () async {
                                          TimeOfDay? selectedTime =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.now(),
                                          );
                                          if (selectedTime != null) {
                                            _checkouttimeController.text =
                                                selectedTime.format(context);
                                          }
                                        },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: TextFormField(
                                        controller: _checkoutdateController,
                                        decoration: InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.calendar_today),
                                          labelText: 'Check-Out Date',
                                          labelStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Colors.blue, width: 2.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Adjust the corner radius
                                            borderSide: const BorderSide(
                                                color: Colors.blue, width: 2.0),
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter Out-in date';
                                          }

                                          return null;
                                        },
                                        onTap: () async {
                                          DateTime? selectedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2100),
                                          );
                                          if (selectedDate != null) {
                                            _checkoutdateController.text =
                                                selectedDate
                                                    .toString()
                                                    .split(' ')[0];
                                          }
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Center(
                                        child: ElevatedButton(
                                      onPressed: () async {
                                        UpdateAttendance();
                                        Navigator.pop(context);
                                        // bool result = await UpdateAttendance();
                                        // if (result) {
                                        //   // Show success message
                                        //   showDialog(
                                        //     context: context,
                                        //     builder: (BuildContext context) {
                                        //       return AlertDialog(
                                        //         title: Text("Success"),
                                        //         content: Text(
                                        //             "Attendance updated successfully."),
                                        //         actions: <Widget>[
                                        //           TextButton(
                                        //             child: Text("OK"),
                                        //             onPressed: () {
                                        //               Navigator.of(context)
                                        //                   .pop();
                                        //             },
                                        //           ),
                                        //         ],
                                        //       );
                                        //     },
                                        //   );
                                        // } else {
                                        //   // Show error message
                                        //   ScaffoldMessenger.of(context)
                                        //       .showSnackBar(
                                        //     const SnackBar(
                                        //       content: Text(
                                        //           "Failed to update attendance."),
                                        //     ),
                                        //   );
                                        // }
                                      },
                                      child: Text("CHECK OUT"),
                                    ))
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      );
                    }));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  Future<LoginModel> fetchEmployeeByUid(int id) async {
    final response = await http
        .get(Uri.parse('http://$ip/HrmPractise02/api/User/UserGet?id=$id'));
    var Data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      userlist.clear();
      for (Map<String, dynamic> index in Data) {
        userlist.add(LoginModel.frommap(index));
      }
      return userlist.first; // return the first user in the list
    } else {
      throw Exception("Failed to fetch employee by UID");
    }
  }

  Future<void> fetchAttendance() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Attendance/AttendanceWithuidandAtendidGet?uid=${widget.selectedEmployee.uid}&attendid=${widget.Attendanceid}&checkin=${widget.checkin} ')); //is ma jo {widget.pass} wgaira hn wo jo hum na uper constructor ma assign kiya h   or  jo shuru ma likhay hn jesay password wgaira ya database column ka names hn or inko fetch is liya kiya ha ka inko  update nai kar sakay ga user ya same rahain ga
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        final user = AttendanceWithIdModel.fromJson(data[0]);

        _checkoutdateController.text = user.date.toString();

        // Load the image from the previous URL, if exists

      }
    } else {
      throw Exception('Failed to load education');
    }
  }

  // void UpdateAttendance({int? Uid}) async {
  //   var url = "http://$ip/HrmPractise02/api/Attendance/UpdateAttendance";
  //   var data = {
  //     "Uid": widget.selectedEmployee.uid,
  //     "Attendanceid": widget.Attendanceid,
  //     "checkin": widget.checkin,
  //     "date": _checkoutdateController.text,
  //     "checkout": _checkouttimeController.text,
  //     "status": "present",

  //     // Change this to the appropriate value
  //   };
  //   var boddy = jsonEncode(data);
  //   var urlParse = Uri.parse(url);
  //   try {
  //     http.Response response = await http.put(urlParse,
  //         body: boddy, headers: {"Content-Type": "application/json"});
  //     var dataa = jsonDecode(response.body);
  //     print(dataa);
  //   } catch (e) {
  //     print('Error occurred: $e');
  //   }
  // }

  // uper wala function void ka sath ha or ya wala bool ka sath message show karwanay ka liya
  Future<bool> UpdateAttendance() async {
    var url = "http://$ip/HrmPractise02/api/Attendance/UpdateAttendance";
    var data = {
      "Uid": widget.selectedEmployee.uid,
      "Attendanceid": widget.Attendanceid,
      "checkin": widget.checkin,
      "date": _checkoutdateController.text,
      "checkout": _checkouttimeController.text,
      "status": "present",
    };
    var boddy = jsonEncode(data);
    var urlParse = Uri.parse(url);
    try {
      http.Response response = await http.put(urlParse,
          body: boddy, headers: {"Content-Type": "application/json"});
      var dataa = jsonDecode(response.body);
      print(dataa);

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error occurred: $e');
      return false;
    }
  }
}
