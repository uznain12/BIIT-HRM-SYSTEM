import 'dart:convert';
import 'dart:math';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Applicant-Home/Job/job_detail.dart';
import 'package:fyp_practise_project/Applicant-Home/app_profile.dart';
import 'package:fyp_practise_project/Dashboards/applicant_dash.dart';
import 'package:fyp_practise_project/HR-Home/Job/all_posted_jobs_detail.dart';
import 'package:fyp_practise_project/Models/jobget_model.dart';
import 'package:fyp_practise_project/uri.dart';

import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class AllPostedJobs extends StatefulWidget {
  int? uid;
  AllPostedJobs({required this.uid});
  // const ApplicantApplyJob({super.key});

  @override
  State<AllPostedJobs> createState() => _AllPostedJobsState();
}

class _AllPostedJobsState extends State<AllPostedJobs> {
  List<JobGetModel> joblist = [];
  late Widget _widget;
  @override
  void initState() {
    super.initState();
    _widget = AllPostedJobs(uid: widget.uid);
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
              future: getjob(),
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
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing:
                                10.0, // Decreased from MediaQuery.of(context).size.height * 0.09
                            crossAxisSpacing:
                                1.0, // Decreased from MediaQuery.of(context).size.width * 0.09
                            childAspectRatio: 3 / 2,
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
                                    MediaQuery.of(context).size.height * 0.03,
                                left: MediaQuery.of(context).size.width * 0.02,
                                right: MediaQuery.of(context).size.width * 0.02,
                              ),
                              child: InkWell(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AllPostedJobsDetail(
                                                  uid: widget.uid,
                                                  jid: joblist[index].jid)));
                                }),
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
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.01),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Title: ${joblist[index].title}",
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          "Salary:${joblist[index].salary.toString()}",
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          "Location:   ${joblist[index].location}",
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
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

  Future<List<JobGetModel>> getjob() async {
    //response keyword khud sa bnaya ha
    final response = await http.get(Uri.parse(
        'http://$ip/HrmPractise02/api/Job/JobGet')); // is ma aik variable bnaya ha response ka name sa or phir get method ka through api ko hit kar rahay hn is ka data aik data variable ma store karway ga
    var Data = jsonDecode(response.body
        .toString()); // decode kar ka data variable ma store kar rahay hn
    if (response.statusCode == 200) {
      joblist.clear();
      for (Map<String, dynamic> index in Data) {
        joblist.add(JobGetModel.fromJson(index));
      }
      return joblist;
    } else {
      return joblist;
    }
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
