import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Dashboards/applicant_dash.dart';

import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApplyJobApplicant extends StatefulWidget {
  int? uid;
  int? jid;
  ApplyJobApplicant({super.key, required this.uid, required this.jid});

  @override
  State<ApplyJobApplicant> createState() => _ApplyJobApplicantState();
}

TextEditingController _nameController = TextEditingController();

class _ApplyJobApplicantState extends State<ApplyJobApplicant> {
  bool alreadyApplied = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apply Screen "),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter the name of the institute',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                ApplyJob(Uid: widget.uid);
              },
              child: Text("Save")),
        ],
      ),
    );
  }

  void ApplyJob({int? Uid}) async {
    if (alreadyApplied) {
      // show message to the user that they have already applied
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('You have already applied for this job'),
        ),
      );
      return;
    }

    var url = "http://$ip/HrmPractise02/api/JobApplication/JobApplicationPost";
    var data = {
      "Uid": widget.uid,
      "Jid": widget.jid,

      "name": _nameController.text,
      "status": "pending"
      // Change this to the appropriate value
    };
    var boddy = jsonEncode(data);
    var urlParse = Uri.parse(url);
    try {
      http.Response response = await http.post(urlParse,
          body: boddy, headers: {"Content-Type": "application/json"});
      var dataa = jsonDecode(response.body);
      print(dataa);
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Thank you'),
          content: Text('Your application has been submitted.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      ).then((_) => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ApplicantDashboard(uid: widget.uid))));
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
