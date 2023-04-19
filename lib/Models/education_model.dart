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
  });

  int eduId;
  int uid;
  String degree;
  String institute;
  String board;
  int startdate;
  int enddate;
  String hasaddededucation;

  factory EducationGetModel.fromJson(Map<String, dynamic> json) =>
      EducationGetModel(
        eduId: json["EduID"],
        uid: json["Uid"] ?? 0,
        degree: json["Degree"],
        institute: json["Institute"],
        board: json["Board"],
        startdate: json["Startdate"] ?? 0,
        enddate: json["Enddate"] ?? 0,
        hasaddededucation: json["hasaddededucation"],
      );

  Map<String, dynamic> toJson() => {
        "EduID": eduId,
        "Uid": uid,
        "Degree": degree,
        "Institute": institute,
        "Board": board,
        "Startdate": startdate,
        "Enddate": enddate,
        "hasaddededucation": hasaddededucation,
      };
}
