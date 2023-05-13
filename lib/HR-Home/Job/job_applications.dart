import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Personal/update_personal.dart';
import 'package:fyp_practise_project/HR-Home/Job/jobapplications_detail.dart';
import 'package:fyp_practise_project/Models/job_application_model.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JobApplications extends StatefulWidget {
  int? uid;
  JobApplications({super.key, required this.uid});

  @override
  State<JobApplications> createState() => _JobApplicationsState();
}

class _JobApplicationsState extends State<JobApplications> {
  List<JobApplicationModel> jobapplicationlist = [];
  _Filter? _selectedFilter; //This line only use for dropdownfilter

  final List<_Filter> _filters = [
    _Filter(name: 'Teacher', isSelected: false),
    _Filter(name: 'Guard', isSelected: false),
    _Filter(name: 'Lab Attendant', isSelected: false),
    _Filter(name: 'Assistant teacher', isSelected: false),
    _Filter(name: 'Professor', isSelected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Job Applications"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: fetchcuser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<JobApplicationModel> filteredJobApplications = [];
                if (_filters.any((filter) => filter.isSelected)) {
                  for (final jobApplication in jobapplicationlist) {
                    for (final filter in _filters) {
                      if (filter.isSelected &&
                          jobApplication.job.title.toLowerCase().trim() ==
                              filter.name.toLowerCase().trim()) {
                        filteredJobApplications.add(jobApplication);
                        break;
                      }
                    }
                  }
                } else {
                  filteredJobApplications = List.from(jobapplicationlist);
                }
                return Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.47),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      child: DropdownButton<_Filter>(
                        hint: Text(
                          'Select Job',
                          style: TextStyle(color: Colors.red),
                        ),
                        value: _selectedFilter,
                        onChanged: (_Filter? newValue) {
                          setState(() {
                            _selectedFilter = newValue;
                            if (_selectedFilter != null) {
                              _selectedFilter!.isSelected =
                                  !_selectedFilter!.isSelected;
                            }
                          });
                        },
                        items: _filters
                            .map<DropdownMenuItem<_Filter>>((_Filter filter) {
                          return DropdownMenuItem<_Filter>(
                            value: filter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(filter.name),
                                if (filter.isSelected)
                                  Icon(
                                    Icons.check,
                                    color: Theme.of(context).primaryColor,
                                  ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Row(
                  //     children: _filters
                  //         .map(
                  //           (filter) => Flexible(
                  //             child: CheckboxListTile(
                  //               title: Text(filter.name),
                  //               value: filter.isSelected,
                  //               onChanged: (bool? value) {
                  //                 setState(() {
                  //                   filter.isSelected = value!;
                  //                 });
                  //               },
                  //             ),
                  //           ),
                  //         )
                  //         .toList(),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Row(
                  //     children: [
                  //       // Flexible(
                  //       //   child: CheckboxListTile(
                  //       //     title: Text(_filters[0].name),
                  //       //     value: _filters[0].isSelected,
                  //       //     onChanged: (bool? value) {
                  //       //       setState(() {
                  //       //         _filters[0].isSelected = value!;
                  //       //       });
                  //       //     },
                  //       //   ),
                  //       // ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(left: 40),
                  //         child: Flexible(
                  //           fit: FlexFit.loose,
                  //           child: Text(
                  //             _filters[0].name,
                  //             style: const TextStyle(fontSize: 20),
                  //           ),
                  //         ),
                  //       ),
                  //       const SizedBox(
                  //           width:
                  //               8.0), // Add space between the text and the checkbox
                  //       Checkbox(
                  //         value: _filters[0].isSelected,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             _filters[0].isSelected = value!;
                  //           });
                  //         },
                  //       ),

                  //       Flexible(
                  //         fit: FlexFit.loose,
                  //         child: Text(
                  //           _filters[1].name,
                  //           style: const TextStyle(fontSize: 20),
                  //         ),
                  //       ),
                  //       const SizedBox(
                  //           width:
                  //               8.0), // Add space between the text and the checkbox
                  //       Checkbox(
                  //         value: _filters[1].isSelected,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             _filters[1].isSelected = value!;
                  //           });
                  //         },
                  //       ),

                  //       // Flexible(
                  //       //   child: CheckboxListTile(
                  //       //     title: Text(_filters[1].name),
                  //       //     value: _filters[1].isSelected,
                  //       //     onChanged: (bool? value) {
                  //       //       setState(() {
                  //       //         _filters[1].isSelected = value!;
                  //       //       });
                  //       //     },
                  //       //   ),
                  //       // ),
                  //       Flexible(
                  //         fit: FlexFit.loose,
                  //         child: Text(
                  //           _filters[2].name,
                  //           style: const TextStyle(fontSize: 20),
                  //         ),
                  //       ),
                  //       const SizedBox(
                  //           width:
                  //               8.0), // Add space between the text and the checkbox
                  //       Checkbox(
                  //         value: _filters[2].isSelected,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             _filters[2].isSelected = value!;
                  //           });
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 50),
                  //   child: Row(
                  //     children: [
                  //       Flexible(
                  //         fit: FlexFit.loose,
                  //         child: Text(
                  //           _filters[3].name,
                  //           style: const TextStyle(fontSize: 20),
                  //         ),
                  //       ),
                  //       const SizedBox(
                  //           width:
                  //               8.0), // Add space between the text and the checkbox
                  //       Checkbox(
                  //         value: _filters[3].isSelected,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             _filters[3].isSelected = value!;
                  //           });
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing:
                              5.0, // Decreased from MediaQuery.of(context).size.height * 0.09
                          crossAxisSpacing:
                              10.0, // Decreased from MediaQuery.of(context).size.width * 0.09
                          childAspectRatio: 3.2 / 3,
                        ),
                        itemCount: filteredJobApplications.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03,
                              left: MediaQuery.of(context).size.width * 0.01,
                              right: MediaQuery.of(context).size.width * 0.01,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            JobApplicationDetail(
                                              uid: widget.uid,
                                              applicationid:
                                                  filteredJobApplications[index]
                                                      .jobApplicationId,
                                            )));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade200,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.blue,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.2), // Shadow color with reduced opacity
                                      offset: Offset(0,
                                          3), // Horizontal and vertical offset of the shadow
                                      blurRadius:
                                          6, // Amount of blur applied to the shadow
                                      spreadRadius:
                                          2, // Extent of the shadow, a higher value will make the shadow larger
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.03),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // RichText(
                                      //   text: TextSpan(
                                      //       style: DefaultTextStyle.of(context).style,
                                      //       children: [
                                      //         const TextSpan(
                                      //           text: "First Name: ",
                                      //           style: TextStyle(
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //         TextSpan(
                                      //           text: "${userlist[index].fname}",
                                      //           style: const TextStyle(
                                      //             fontStyle: FontStyle.italic,
                                      //           ),
                                      //         ),
                                      //       ]),
                                      // ),
                                      // Text("First Name: ${userlist[index].fname}"),
                                      const SizedBox(height: 4),
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
                                                  text:
                                                      "Job Title :                 ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${filteredJobApplications[index].job.title}",
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
                                                  text: "Applicant Name :    ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${filteredJobApplications[index].user!.fname} "
                                                      " ${filteredJobApplications[index].user!.lname}",
                                                  style: const TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      // RichText(
                                      //   text: TextSpan(
                                      //       style: DefaultTextStyle.of(context).style,
                                      //       children: [
                                      //         const TextSpan(
                                      //           text: "CNIC:             ",
                                      //           style: TextStyle(
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //         TextSpan(
                                      //           text: "${userlist[index].cnic}",
                                      //           style: const TextStyle(
                                      //             fontStyle: FontStyle.italic,
                                      //           ),
                                      //         ),
                                      //       ]),
                                      // ),
                                      const SizedBox(height: 4),
                                      // RichText(
                                      //   text: TextSpan(
                                      //       style: DefaultTextStyle.of(context).style,
                                      //       children: [
                                      //         const TextSpan(
                                      //           text: "Date Of Birth: ",
                                      //           style: TextStyle(
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //         TextSpan(
                                      //           text: "${userlist[index].dob}",
                                      //           style: const TextStyle(
                                      //             fontStyle: FontStyle.italic,
                                      //           ),
                                      //         ),
                                      //       ]),
                                      // ),
                                      const SizedBox(height: 4),
                                      // RichText(
                                      //   text: TextSpan(
                                      //       style: DefaultTextStyle.of(context).style,
                                      //       children: [
                                      //         const TextSpan(
                                      //           text: "Gender : ",
                                      //           style: TextStyle(
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //         TextSpan(
                                      //           text: "${userlist[index].gender}",
                                      //           style: const TextStyle(
                                      //             fontStyle: FontStyle.italic,
                                      //           ),
                                      //         ),
                                      //       ]),
                                      // ),
                                      const SizedBox(height: 4),
                                      // RichText(
                                      //   text: TextSpan(
                                      //       style: DefaultTextStyle.of(context).style,
                                      //       children: [
                                      //         const TextSpan(
                                      //           text: "Address : ",
                                      //           style: TextStyle(
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //         TextSpan(
                                      //           text: "${userlist[index].address}",
                                      //           style: const TextStyle(
                                      //             fontStyle: FontStyle.italic,
                                      //           ),
                                      //         ),
                                      //       ]),
                                      // ),

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
                                      // Center(
                                      //   child: SizedBox(
                                      //     width: 200,
                                      //     child: ElevatedButton(
                                      //         onPressed: () {
                                      //           Navigator.push(
                                      //               context,
                                      //               MaterialPageRoute(
                                      //                   builder: (context) =>
                                      //                       JobApplicationDetail(
                                      //                         uid: widget.uid,
                                      //                         applicationid:
                                      //                             jobapplicationlist[
                                      //                                     index]
                                      //                                 .jid,
                                      //                       )));
                                      //         },
                                      //         child: Text("Detail")),
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
                  ),
                ]);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  Future<List<JobApplicationModel>> fetchcuser() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/JobApplication/AllJobApplicationGet')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      jobapplicationlist.clear();
      for (Map<String, dynamic> index in Data) {
        jobapplicationlist.add(JobApplicationModel.fromJson(index));
      }
      return jobapplicationlist;
    } else {
      return jobapplicationlist;
    }
  }
}

class _Filter {
  String name;
  bool isSelected;

  _Filter({required this.name, required this.isSelected});
}
