import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class JobPost extends StatefulWidget {
  const JobPost({super.key});

  @override
  State<JobPost> createState() => _JobPostState();
}

// Controllers

TextEditingController _jtitlecontroller = new TextEditingController();
TextEditingController _jexperiencecontroller = new TextEditingController();
TextEditingController _jqualificationcontroller = new TextEditingController();
TextEditingController _jvacanciescontroller = new TextEditingController();
TextEditingController _datecontroller = new TextEditingController();

void newjob(String title, experience, qualification, vacancies, date) async {
  try {
    Response responce = await post(
        Uri.parse('http://192.168.43.117/HrmFypApi/api/ApplicantInfo/JobPost'),
        body: {
          'j_title': title,
          'j_exp': experience,
          'j_qualification': qualification,
          'nov': vacancies,
          'due_date': date,
        });

    if (responce.statusCode == 200) {
      print("job posted succesfully");
    } else {
      print('Failed');
    }
  } catch (e) {
    print(e.toString());
  }
}

class _JobPostState extends State<JobPost> {
  String gval = "none";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'JOB POST',
            style: TextStyle(
                fontFamily: 'RobotoSlab-Black',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          color: Colors.white,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                child: TextFormField(
                  controller: _jtitlecontroller,
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      labelText: 'Job Title',
                      hintText: '',
                      hintStyle: null,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle:
                          const TextStyle(fontSize: 25, color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: _jexperiencecontroller,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Job Experience',
                        hintText: '',
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: _jqualificationcontroller,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Job Qualification',
                        hintText: '',
                        hintStyle: const TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle:
                            const TextStyle(fontSize: 25, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: _jvacanciescontroller,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Number Of Vacancies',
                        hintText: '',
                        hintStyle: const TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle:
                            const TextStyle(fontSize: 25, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: _datecontroller,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Due date',
                        hintText: '',
                        hintStyle: const TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle:
                            const TextStyle(fontSize: 25, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050));
                      if (pickeddate != null) {
                        setState(() {
                          DateTime now = DateTime.now();
                          _datecontroller.text =
                              DateFormat('dd-MM-yyyy').format(now);
                        });
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, right: 0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.9),
                            side: const BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          )),
                      onPressed: () {
                        newjob(
                            _jtitlecontroller.text.toString(),
                            _jexperiencecontroller.text.toString(),
                            _jqualificationcontroller.text.toString(),
                            _jvacanciescontroller.text.toString(),
                            _datecontroller.text.toString());
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                title: Text("Success"),
                                content: Text("Job posted successfully"),
                                actions: <Widget>[],
                              );
                            });
                      },
                      child: const Text(
                        'POST',
                        style: TextStyle(fontSize: 27, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
