import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Personal/update_personal.dart';
import 'package:fyp_practise_project/Dashboards/hr_dash.dart';
import 'package:fyp_practise_project/HR-Home/New-Committe/committe_mian.dart';
import 'package:fyp_practise_project/Models/login_signup_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewCreateCommitteHead extends StatefulWidget {
  int? uid;
  String? fname, lname, email, contatc, cnic, dob, gender, address, image, pass;
  NewCreateCommitteHead(
      {super.key,
      required this.uid,
      required this.fname,
      required this.lname,
      required this.email,
      required this.cnic,
      required this.dob,
      required this.pass,
      required this.image,
      required this.gender,
      required this.address,
      required this.contatc});

  @override
  State<NewCreateCommitteHead> createState() => _NewCreateCommitteHeadState();
}

class _NewCreateCommitteHeadState extends State<NewCreateCommitteHead> {
  final TextEditingController _committeetitleController =
      TextEditingController();
  List<LoginModel> userlist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Committe"),
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: _committeetitleController,
              decoration: const InputDecoration(
                labelText: 'Please Enter Committe Title',
                prefixIcon: Icon(Icons.person),
                prefixIconConstraints: BoxConstraints(
                  minWidth: 54,
                  minHeight: 54,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
                future: fetchcuser(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: userlist.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04,
                                left: MediaQuery.of(context).size.height * 0.02,
                                right:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: Container(
                              height: 500,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.03),
                                child: Stack(children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                                    image: NetworkImage(
                                                        imagepath +
                                                            userlist[index]
                                                                .image)),
                                              )
                                            : const SizedBox.shrink(),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
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
                                                    text: "Name:         ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${userlist[index].fname} ${userlist[index].lname}",
                                                    style: const TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${userlist[index].mobile}",
                                                    style: const TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
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
                                                    text: "CNIC:             ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${userlist[index].cnic}",
                                                    style: const TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
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
                                                    text: "Date Of Birth: ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${userlist[index].dob}",
                                                    style: const TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
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
                                                    text: "Gender : ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${userlist[index].gender}",
                                                    style: const TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
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
                                                    text: "Address : ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${userlist[index].address}",
                                                    style: const TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                        const SizedBox(height: 30),
                                        Center(
                                          child: SizedBox(
                                            height: 50,
                                            width: 300,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  // UpdateUser(context);
                                                  AddCommitte(Uid: widget.uid);
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MainCommittePage(
                                                                uid: widget.uid,
                                                              )));
                                                },
                                                child: Text("Create Committe")),
                                          ),
                                        ),
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
                }),
          ),
        ]));
  }

  Future<List<LoginModel>> fetchcuser() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/User/UserGet?id=${widget.uid}&Fname=${widget.fname}&Lname=${widget.lname}&email=${widget.email}&mobile=${widget.contatc}&cnic=${widget.cnic}&dob=${widget.dob}&gender=${widget.gender}&address=${widget.address}&password=${widget.pass}&image=${widget.image},')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
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

  void AddCommitte({int? Uid}) async {
    var url = "http://$ip/HrmPractise02/api/Committee/Createcommitte";
    var data = {
      "CommitteeHead": widget.uid,
      "CommitteeTitle": _committeetitleController.text,
      // Change this to the appropriate value
    };
    var boddy = jsonEncode(data);
    var urlParse = Uri.parse(url);
    try {
      http.Response response = await http.post(urlParse,
          body: boddy, headers: {"Content-Type": "application/json"});
      var dataa = jsonDecode(response.body);
      print(dataa);
      setState(() {}); // call setState() here
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
