import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GuardCheckIn extends StatefulWidget {
  final bool isCheckIn;
  final LoginModel
      selectedEmployee; //selected employee jis pa click ki ha woi open hoga iskay hrough jesay user ko id ki base pa la ka atay hn usi tarah
  GuardCheckIn(
      {Key? key, required this.selectedEmployee, this.isCheckIn = true})
      : super(key: key);

  @override
  State<GuardCheckIn> createState() => _GuardCheckInState();
}

class _GuardCheckInState extends State<GuardCheckIn> {
  List<LoginModel> userlist = [];
  late Future<LoginModel>
      selectedEmployee; //card ma jis employee par click kiya uski information fetch karnay ka liya use kiya
  final TextEditingController _checkintimeController = TextEditingController();
  final TextEditingController _checkindateController = TextEditingController();
  bool _isInitial = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInitial) {
      _checkintimeController.text = TimeOfDay.now().format(context);
      _checkindateController.text = DateTime.now().toString().split(' ')[0];
      _isInitial = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    LoginModel selectedEmployee = widget
        .selectedEmployee; // Selected Employee ko lanay ka liya idr hamay ya lgana paray ga
    return Scaffold(
        appBar: AppBar(
          title: const Text("Attendance Check In Screen"),
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
                                        controller: _checkintimeController,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.access_time),
                                          labelText: 'Check-in Time',
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
                                            return 'Please enter check-in time';
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
                                            _checkintimeController.text =
                                                selectedTime.format(context);
                                          }
                                        },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: TextFormField(
                                        controller: _checkindateController,
                                        decoration: InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.calendar_today),
                                          labelText: 'Check-in Date',
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
                                            return 'Please enter check-in date';
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
                                            _checkindateController.text =
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
                                        onPressed: () {
                                          AddAttendance(
                                              Uid: widget.selectedEmployee.uid,
                                              isCheckIn: widget.isCheckIn);
                                          Navigator.pop(context);
                                        },
                                        child: Text(widget.isCheckIn
                                            ? "CHECK IN"
                                            : "CHECK OUT"),
                                      ),
                                    )
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

  void AddAttendance({int? Uid, bool isCheckIn = true}) async {
    var url = "http://$ip/HrmPractise02/api/Attendance/AttendancePost";
    var data = {
      "Uid": widget.selectedEmployee.uid,
      "checkin": _checkintimeController.text,
      "date": _checkindateController.text,
      "status": "present"
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
