// To parse this JSON data, do
//
//     final educationGetModel = educationGetModelFromJson(jsonString);

import 'dart:convert';

EducationGetModel educationGetModelFromJson(String str) =>
    EducationGetModel.fromJson(json.decode(str));

String educationGetModelToJson(EducationGetModel data) =>
    json.encode(data.toJson());

class EducationGetModel {
  EducationGetModel({
    required this.eduId,
    required this.uid,
    required this.degree,
    required this.institute,
    required this.board,
    required this.startdate,
    required this.enddate,
    required this.hasaddededucation,
    required this.major,
  });

  int eduId;
  int uid;
  String degree;
  String major;
  String institute;
  String board;
  String startdate;
  String enddate;
  String hasaddededucation;

  factory EducationGetModel.fromJson(Map<String, dynamic> json) =>
      EducationGetModel(
        eduId: json["EduID"],
        uid: json["Uid"] ?? 0,
        degree: json["Degree"],
        major: json["major"] ?? '',
        institute: json["Institute"],
        board: json["Board"],
        startdate: json["Startdate"] ?? '',
        enddate: json["Enddate"] ?? '',
        hasaddededucation: json["hasaddededucation"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "EduID": eduId,
        "Uid": uid,
        "Degree": degree,
        "major": major,
        "Institute": institute,
        "Board": board,
        "Startdate": startdate,
        "Enddate": enddate,
        "hasaddededucation": hasaddededucation,
      };
}
