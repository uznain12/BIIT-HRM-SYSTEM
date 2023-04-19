// To parse this JSON data, do
//
//     final experienceModel = experienceModelFromJson(jsonString);

import 'dart:convert';

ExperienceModel experienceModelFromJson(String str) =>
    ExperienceModel.fromJson(json.decode(str));

String experienceModelToJson(ExperienceModel data) =>
    json.encode(data.toJson());

class ExperienceModel {
  ExperienceModel({
    required this.expId,
    required this.uid,
    required this.company,
    required this.title,
    required this.startdate,
    required this.enddate,
    required this.hasexperienced,
  });

  int expId;
  int uid;
  String company;
  String title;
  int startdate;
  int enddate;
  String hasexperienced;

  factory ExperienceModel.fromJson(Map<String, dynamic> json) =>
      ExperienceModel(
        expId: json["ExpID"],
        uid: json["Uid"],
        company: json["Company"],
        title: json["Title"],
        startdate: json["Startdate"],
        enddate: json["Enddate"],
        hasexperienced: json["hasexperienced"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "ExpID": expId,
        "Uid": uid,
        "Company": company,
        "Title": title,
        "Startdate": startdate,
        "Enddate": enddate,
        "hasexperienced": hasexperienced,
      };
}
