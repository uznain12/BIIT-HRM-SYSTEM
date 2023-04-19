import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Personal/update_personal.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AppPersonalInfo extends StatefulWidget {
  int? uid;
  AppPersonalInfo({super.key, required this.uid});

  @override
  State<AppPersonalInfo> createState() => _AppPersonalInfoState();
}

class _AppPersonalInfoState extends State<AppPersonalInfo> {
  List<LoginModel> userlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Personal Information"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: fetchcuser(widget.uid!),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: userlist.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.07),
                        child: Container(
                          height: 400,
                          decoration:
                              BoxDecoration(color: Colors.grey.shade300),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 50.0),
                                  child: Center(
                                    child: CircleAvatar(
                                      radius:
                                          50, // adjust the size as per your needs
                                      // backgroundImage: NetworkImage(
                                      //   '${userlist[index].imageURL}',
                                      // ),
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "First Name: ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${userlist[index].fname}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),
                                // Text("First Name: ${userlist[index].fname}"),
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "Last Name:   ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${userlist[index].lname}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "Number:        ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${userlist[index].mobile}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
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
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "Date Of Birth: ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${userlist[index].dob}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "Gender : ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${userlist[index].gender}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),
                                const SizedBox(height: 4),
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        const TextSpan(
                                          text: "Address : ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${userlist[index].address}",
                                          style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                ),

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
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PersonalUpdate(
                                                    role: userlist[index].role,
                                                    pass: userlist[index]
                                                        .password,
                                                    email:
                                                        userlist[index].email,
                                                    uid: widget.uid,
                                                  )));
                                    },
                                    child: Text("Edit"))
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

  Future<List<LoginModel>> fetchcuser(int id) async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/User/UserGet?id=$id')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      userlist.clear();
      for (Map<String, dynamic> index in Data) {
        userlist.add(LoginModel.frommap(index));
      }
      return userlist;
    } else {
      return userlist;
    }
  }
}
