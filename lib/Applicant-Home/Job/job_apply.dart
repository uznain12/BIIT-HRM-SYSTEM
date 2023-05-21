import 'package:flutter/material.dart';
import 'package:fyp_practise_project/Dashboards/applicant_dash.dart';
import 'package:path/path.dart'
    show
        basename; // idr ya use ki ha isay use nai karain ga to context pa error ay ga

import 'package:file_picker/file_picker.dart';
import 'package:fyp_practise_project/uri.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class ApplyJobApplicant extends StatefulWidget {
  int? uid;
  int? jid;
  ApplyJobApplicant({super.key, required this.uid, required this.jid});

  @override
  State<ApplyJobApplicant> createState() => _ApplyJobApplicantState();
}

TextEditingController _nameController = TextEditingController();

bool _isFilePickerActive =
    false; // Ya Line is liya add ki ha ka aik bar file add ho jay to dubara us pa click karain to dubara file pick karnay nai jay ga =like bar bar edit nai ho sakay gi file

class _ApplyJobApplicantState extends State<ApplyJobApplicant> {
  bool alreadyApplied = false;

  File? document;

  // Future<void> pickDocument() async {
  //   FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['pdf', 'doc', 'docx'],
  //   ).then((FilePickerResult? result) {
  //     if (result != null) {
  //       setState(() {
  //         document = File(result.files.single.path!);
  //       });
  //     } else {
  //       print('No file selected');
  //     }
  //   }).catchError((error) {
  //     print('Error picking file: $error');
  //   });
  // }

  //new
  Future<void> pickDocument() async {
    if (_isFilePickerActive) return;
    _isFilePickerActive = true;

    FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    ).then((FilePickerResult? result) {
      if (result != null) {
        setState(() {
          document = File(result.files.single.path!);
        });
      } else {
        print('No file selected');
      }
    }).catchError((error) {
      print('Error picking file: $error');
    }).whenComplete(() => _isFilePickerActive = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apply Screen "),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08),
                child: GestureDetector(
                  onTap: () {
                    pickDocument();
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the content horizontally
                        children: const [
                          Icon(
                            Icons.file_upload, // Choose the appropriate icon
                            color: Colors.black, // Set the icon color
                          ),
                          SizedBox(
                              width:
                                  8), // Add some spacing between the icon and the text
                          Text(
                            'Select your CV',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              document != null
                  ? Text(
                      'Selected CV: ${basename(document!.path)}',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  : Text(
                      'No CV selected',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    ApplyJob(Uid: widget.uid);
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void ApplyJob({int? Uid}) async {
    if (document == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a CV first'),
        ),
      );
      return;
    }

    var url =
        "http://$ip/HrmPractise02/api/JobApplication/JobFileApplicationWithFilterPost2";
    var request = http.MultipartRequest('POST', Uri.parse(url));

    if (document != null) {
      var documentStream = http.ByteStream(document!.openRead());
      documentStream.cast();
      var documentLength = await document!.length();
      var documentMultipart = http.MultipartFile(
          'document', documentStream, documentLength,
          filename: basename(document!.path));
      request.files.add(documentMultipart);
    }

    request.fields['Uid'] = widget.uid.toString();
    request.fields['Jid'] = widget.jid.toString();
    request.fields['name'] = _nameController.text;
    request.fields['status'] = 'pending';

    try {
      http.StreamedResponse response = await request.send();
      var responseString = await response.stream.bytesToString();

      if (response.statusCode == 200) {
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
      } else {
        print(
            'Error occurred during submission, status code: ${response.statusCode}');
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('An error occurred during submission, please try again.'),
          ),
        );
      }
    } catch (e) {
      print('Exception occurred: $e');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content:
              Text('An error occurred during submission, please try again.'),
        ),
      );
    }
  }
}
