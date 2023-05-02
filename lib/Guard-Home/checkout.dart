import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Personal/update_personal.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GuardCheckOut extends StatefulWidget {
  // int? uid;
  // int? employeeuid;
  final LoginModel selectedEmployee;
  GuardCheckOut({Key? key, required this.selectedEmployee}) : super(key: key);

  @override
  State<GuardCheckOut> createState() => _GuardCheckOutState();
}

class _GuardCheckOutState extends State<GuardCheckOut> {
  List<LoginModel> userlist = [];
  late Future<LoginModel> selectedEmployee;

  @override
  Widget build(BuildContext context) {
    LoginModel selectedEmployee = widget.selectedEmployee;
    return Scaffold(
        appBar: AppBar(
          title: Text("Guard Check Out Screen"),
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
                          height: 500,
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
                                        : const SizedBox.shrink(),
                                  )),
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
                                            style: DefaultTextStyle.of(context)
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
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              const TextSpan(
                                                text: "CNIC:             ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "${userlist[index].cnic}",
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    // Center(
                                    //   child: SizedBox(
                                    //     width: 200,
                                    //     child: ElevatedButton(
                                    //         onPressed: () {
                                    //           Navigator.push(
                                    //               context,
                                    //               MaterialPageRoute(
                                    //                   builder: (context) =>
                                    //                       PersonalUpdate(
                                    //                         role:
                                    //                             userlist[index]
                                    //                                 .role,
                                    //                         pass:
                                    //                             userlist[index]
                                    //                                 .password,
                                    //                         email:
                                    //                             userlist[index]
                                    //                                 .email,
                                    //                         uid: widget.uid,
                                    //                       )));
                                    //         },
                                    //         child: Text("Edit")),
                                    //   ),
                                    // )
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
}
