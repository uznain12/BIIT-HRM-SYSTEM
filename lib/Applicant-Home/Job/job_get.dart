import 'dart:convert';
import 'dart:math';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Job/job_detail.dart';
import 'package:fyp_practise_project/Applicant-Home/app_profile.dart';
import 'package:fyp_practise_project/Dashboards/applicant_dash.dart';
import 'package:fyp_practise_project/Models/jobget_model.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class ApplicantApplyJob extends StatefulWidget {
  int? uid;
  ApplicantApplyJob({required this.uid});
  // const ApplicantApplyJob({super.key});

  @override
  State<ApplicantApplyJob> createState() => _ApplicantApplyJobState();
}

class _ApplicantApplyJobState extends State<ApplicantApplyJob> {
  List<JobGetModel> joblist = [];
  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = ApplicantApplyJob(uid: widget.uid);
  }

  String _searchQuery = ''; // User for search
  // _Filter? _selectedFilter; //This line only use for dropdownfilter

  // final List<_Filter> _filters = [
  //   _Filter(name: 'Teacher', isSelected: false),
  //   _Filter(name: 'Guard', isSelected: false),
  //   _Filter(name: 'Fts', isSelected: false),
  //   _Filter(name: 'Assistant teacher', isSelected: false),
  // ];
  // final List<_Filter> _filters2 = [
  //   _Filter(name: 'Uznain', isSelected: false),
  //   _Filter(name: 'Kalyar', isSelected: false),
  //   _Filter(name: 'Fts', isSelected: false),
  //   _Filter(name: 'Assistant teacher', isSelected: false),
  // ];

  // Bottom navbar
  int _selectedIndex = 0;
  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.work),
      label: 'Jobs',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Apply For Job',
          style: TextStyle(
              fontFamily: 'RobotoSlab-Black',
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        items: _bottomNavBarItems,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          switch (_selectedIndex) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApplicantDashboard(uid: widget.uid),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApplicantProfile(uid: widget.uid),
                ),
              );
              break;
          }
        },
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
              future: getjob(
                context,
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      //Drop down filter list
                      // DropdownButton<_Filter>(
                      //   hint: Text('Select Filter'),
                      //   value: _selectedFilter,
                      //   onChanged: (_Filter? newValue) {
                      //     setState(() {
                      //       _selectedFilter = newValue;
                      //       if (_selectedFilter != null) {
                      //         _selectedFilter!.isSelected =
                      //             !_selectedFilter!.isSelected;
                      //       }
                      //     });
                      //   },
                      //   items: _filters
                      //       .map<DropdownMenuItem<_Filter>>((_Filter filter) {
                      //     return DropdownMenuItem<_Filter>(
                      //       value: filter,
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text(filter.name),
                      //           if (filter.isSelected)
                      //             Icon(
                      //               Icons.check,
                      //               color: Theme.of(context).primaryColor,
                      //             ),
                      //         ],
                      //       ),
                      //     );
                      //   }).toList(),
                      // ),

                      // // Padding(
                      // //   padding: const EdgeInsets.all(8.0),
                      // //   child: Row(
                      // //     children: _filters
                      // //         .map(
                      // //           (filter) => Flexible(
                      // //             child: CheckboxListTile(
                      // //               title: Text(filter.name),
                      // //               value: filter.isSelected,
                      // //               onChanged: (bool? value) {
                      // //                 setState(() {
                      // //                   filter.isSelected = value!;
                      // //                 });
                      // //               },
                      // //             ),
                      // //           ),
                      // //         )
                      // //         .toList(),
                      // //   ),
                      // // ),
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
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: _filters.map((filter) {
                      //       return Flexible(
                      //         child: ElevatedButton(
                      //           onPressed: () {
                      //             setState(() {
                      //               filter.isSelected = !filter.isSelected;
                      //             });
                      //           },
                      //           child: Text(filter.name),
                      //           style: ButtonStyle(
                      //             backgroundColor:
                      //                 MaterialStateProperty.resolveWith<Color>(
                      //               (Set<MaterialState> states) {
                      //                 return filter.isSelected
                      //                     ? Theme.of(context).primaryColor
                      //                     : Theme.of(context).buttonColor;
                      //               },
                      //             ),
                      //           ),
                      //         ),
                      //       );
                      //     }).toList(),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: _filters2.map((filter) {
                      //       return Flexible(
                      //         child: ElevatedButton(
                      //           onPressed: () {
                      //             setState(() {
                      //               filter.isSelected = !filter.isSelected;
                      //             });
                      //           },
                      //           child: Text(filter.name),
                      //           style: ButtonStyle(
                      //             backgroundColor:
                      //                 MaterialStateProperty.resolveWith<Color>(
                      //               (Set<MaterialState> states) {
                      //                 return filter.isSelected
                      //                     ? Theme.of(context).primaryColor
                      //                     : Theme.of(context).buttonColor;
                      //               },
                      //             ),
                      //           ),
                      //         ),
                      //       );
                      //     }).toList(),
                      //   ),
                      // ),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Search',
                            hintText: 'Enter Job Title',
                            prefixIcon: Icon(Icons.search),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          onChanged: (value) {
                            setState(() {
                              _searchQuery = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 120),
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing:
                                  0, // Decreased from MediaQuery.of(context).size.height * 0.09
                              crossAxisSpacing:
                                  0, // Decreased from MediaQuery.of(context).size.width * 0.09
                              childAspectRatio: 3.5 / 1,
                            ),
                            itemCount: joblist.length,
                            itemBuilder: (context, index) {
                              if (_searchQuery.isNotEmpty &&
                                  !joblist[index]
                                      .title
                                      .toLowerCase()
                                      .contains(_searchQuery.toLowerCase())) {
                                return const SizedBox.shrink();
                              }
                              // bool displayJob = true;
                              // if (_filters.any((filter) => filter.isSelected)) {
                              //   displayJob = false;
                              //   for (final filter in _filters) {
                              //     if (filter.isSelected &&
                              //         joblist[index]
                              //             .title
                              //             .toLowerCase()
                              //             .contains(filter.name.toLowerCase())) {
                              //       displayJob = true;
                              //       break;
                              //     }
                              //   }
                              // }

                              // if (!displayJob) {
                              //   return const SizedBox.shrink();
                              // }
                              // bool displayJob2 = true;
                              // if (_filters2.any((filter) => filter.isSelected)) {
                              //   displayJob2 = false;
                              //   for (final filter in _filters2) {
                              //     if (filter.isSelected &&
                              //         joblist[index]
                              //             .title
                              //             .toLowerCase()
                              //             .contains(filter.name.toLowerCase())) {
                              //       displayJob2 = true;
                              //       break;
                              //     }
                              //   }
                              // }

                              // if (!displayJob2) {
                              //   return const SizedBox.shrink();
                              // }
                              return Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0,
                                  bottom:
                                      MediaQuery.of(context).size.height * 0.01,
                                  left:
                                      MediaQuery.of(context).size.width * 0.02,
                                  right:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                child: InkWell(
                                  onTap: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                JobDetailScreen(
                                                    uid: widget.uid,
                                                    jid: joblist[index].jid)));
                                  }),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue.shade100,
                                          Colors.grey.shade400,
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 3),
                                          blurRadius: 6,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01),
                                      child: Stack(children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text(
                                                " ${joblist[index].title}          (${joblist[index].noofvacancie.toString()})",
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 27),
                                              child: Text(
                                                "${joblist[index].salary.toString()} ",
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 27),
                                              child: Text(
                                                "${joblist[index].location}",
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 270, top: 10),
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            JobDetailScreen(
                                                                uid: widget.uid,
                                                                jid: joblist[
                                                                        index]
                                                                    .jid)));
                                              },
                                              icon: Icon(
                                                FontAwesomeIcons
                                                    .arrowAltCircleRight,
                                                color: Colors.black,
                                                size: 50,
                                              )),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
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

  Future<List<JobGetModel>> getjob(
    BuildContext context,
  ) async {
    // Get the current user's UID.
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Job/WithCheckfilterJobGet?uid=${widget.uid}'));
    var Data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      joblist.clear();
      for (Map<String, dynamic> index in Data) {
        joblist.add(JobGetModel.fromJson(index));
      }
    } else {
      print(
          'Error occurred: ${response.statusCode} - ${response.body}'); // print the error
//jab necahy walay comments on karnay hn to phir navbar ka through profile ma nai jana nai to ya har jagha error dega hum na appbar ma drawer ka andr sa profile ma jana or complete karni hA PROFILE
      // showDialog(
      //   context: context,
      //   builder: (BuildContext context) {
      //     return AlertDialog(
      //       title: Text('Message'),
      //       content: Text('Please Complete The Profile Section First'),
      //       actions: <Widget>[
      //         TextButton(
      //           child: Text('OK'),
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //         ),
      //       ],
      //     );
      //   },
      // );
      // Consider adding a throw statement here if you want to stop execution when the profile is not complete.
    }
    return joblist;
  }
}

// class _Filter {
//   String name;
//   bool isSelected;

//   _Filter({required this.name, required this.isSelected});
// }

// class _Filter2 {
//   String name;
//   bool isSelected;

//   _Filter2({required this.name, required this.isSelected});
// }
