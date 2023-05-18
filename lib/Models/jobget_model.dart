// To parse this JSON data, do
//
//     final jobGetModel = jobGetModelFromJson(jsonString);

import 'dart:convert';

JobGetModel jobGetModelFromJson(String str) =>
    JobGetModel.fromJson(json.decode(str));

String jobGetModelToJson(JobGetModel data) => json.encode(data.toJson());

class JobGetModel {
  JobGetModel({
    required this.jid,
    required this.title,
    required this.description,
    required this.salary,
    required this.lastDateOfApply,
    required this.location,
    required this.experience,
    required this.qualification,
    required this.noofvacancie,
    this.user,
  });

  int jid;
  String title;
  String description;
  String salary;

  String lastDateOfApply;
  String location;
  String experience;
  String qualification;
  int noofvacancie;

  dynamic user;

  factory JobGetModel.fromJson(Map<String, dynamic> json) => JobGetModel(
        jid: json["Jid"],
        title: json["Title"],
        description: json["Description"],
        salary: json["Salary"],
        lastDateOfApply: json["LastDateOfApply"],
        location: json["Location"],
        experience: json["experience"] ?? '',
        qualification: json["qualification"] ?? '',
        noofvacancie: json["noofvacancie"] ?? 0,
        user: json["User"],
      );

  Map<String, dynamic> toJson() => {
        "Jid": jid,
        "Title": title,
        "Description": description,
        "Salary": salary,
        "LastDateOfApply": lastDateOfApply,
        "Location": location,
        "experience": experience,
        "qualification": qualification,
        "noofvacancie": noofvacancie,
        "User": user,
      };
}
