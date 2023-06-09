// To parse this JSON data, do
//
//     final attendanceWithIdModel = attendanceWithIdModelFromJson(jsonString);

import 'dart:convert';

List<AttendanceWithIdModel> attendanceWithIdModelFromJson(String str) =>
    List<AttendanceWithIdModel>.from(
        json.decode(str).map((x) => AttendanceWithIdModel.fromJson(x)));

String attendanceWithIdModelToJson(List<AttendanceWithIdModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AttendanceWithIdModel {
  User user;
  int attendanceid;
  int uid;
  DateTime date;
  String checkin;
  dynamic status;
  dynamic checkout;

  AttendanceWithIdModel({
    required this.user,
    required this.attendanceid,
    required this.uid,
    required this.date,
    required this.checkin,
    this.status,
    this.checkout,
  });

  factory AttendanceWithIdModel.fromJson(Map<String, dynamic> json) =>
      AttendanceWithIdModel(
        user: User.fromJson(json["User"] ?? {}),
        attendanceid: json["Attendanceid"],
        uid: json["Uid"],
        date: DateTime.parse(json["date"]),
        checkin: json["checkin"],
        status: json["status"],
        checkout: json["checkout"],
      );

  Map<String, dynamic> toJson() => {
        "User": user.toJson(),
        "Attendanceid": attendanceid,
        "Uid": uid,
        "date": date.toIso8601String(),
        "checkin": checkin,
        "status": status,
        "checkout": checkout,
      };
}

class User {
  List<dynamic> educations;
  List<dynamic> jobApplications;
  List<LeaveApplication> leaveApplication;
  List<Experience> experiences;
  List<dynamic> attendances;
  int uid;
  String fname;
  String lname;
  String email;
  String mobile;
  String cnic;
  String dob;
  String gender;
  String address;
  String password;
  String role;
  String image;

  User({
    required this.educations,
    required this.jobApplications,
    required this.leaveApplication,
    required this.experiences,
    required this.attendances,
    required this.uid,
    required this.fname,
    required this.lname,
    required this.email,
    required this.mobile,
    required this.cnic,
    required this.dob,
    required this.gender,
    required this.address,
    required this.password,
    required this.role,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        educations: List<dynamic>.from(json["Educations"].map((x) => x)),
        jobApplications:
            List<dynamic>.from(json["JobApplications"].map((x) => x)),
        leaveApplication: List<LeaveApplication>.from(
            json["Leave_Application"].map((x) => LeaveApplication.fromJson(x))),
        experiences: List<Experience>.from(
            json["Experiences"].map((x) => Experience.fromJson(x))),
        attendances: List<dynamic>.from(json["Attendances"].map((x) => x)),
        uid: json["Uid"] ?? 0,
        fname: json["Fname"] ?? '',
        lname: json["Lname"] ?? '',
        email: json["email"] ?? '',
        mobile: json["mobile"] ?? '',
        cnic: json["cnic"] ?? '',
        dob: json["dob"] ?? '',
        gender: json["gender"] ?? '',
        address: json["address"] ?? '',
        password: json["password"] ?? '',
        role: json["role"] ?? '',
        image: json["image"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "Educations": List<dynamic>.from(educations.map((x) => x)),
        "JobApplications": List<dynamic>.from(jobApplications.map((x) => x)),
        "Leave_Application":
            List<dynamic>.from(leaveApplication.map((x) => x.toJson())),
        "Experiences": List<dynamic>.from(experiences.map((x) => x.toJson())),
        "Attendances": List<dynamic>.from(attendances.map((x) => x)),
        "Uid": uid,
        "Fname": fname,
        "Lname": lname,
        "email": email,
        "mobile": mobile,
        "cnic": cnic,
        "dob": dob,
        "gender": gender,
        "address": address,
        "password": password,
        "role": role,
        "image": image,
      };
}

class Experience {
  int expId;
  int uid;
  String company;
  String title;
  String startdate;
  String? currentwork;
  String enddate;
  String? otherskill;
  String hasexperienced;

  Experience({
    required this.expId,
    required this.uid,
    required this.company,
    required this.title,
    required this.startdate,
    this.currentwork,
    required this.enddate,
    this.otherskill,
    required this.hasexperienced,
  });

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        expId: json["ExpID"],
        uid: json["Uid"],
        company: json["Company"],
        title: json["Title"],
        startdate: json["Startdate"],
        currentwork: json["currentwork"],
        enddate: json["Enddate"],
        otherskill: json["otherskill"],
        hasexperienced: json["hasexperienced"],
      );

  Map<String, dynamic> toJson() => {
        "ExpID": expId,
        "Uid": uid,
        "Company": company,
        "Title": title,
        "Startdate": startdate,
        "currentwork": currentwork,
        "Enddate": enddate,
        "otherskill": otherskill,
        "hasexperienced": hasexperienced,
      };
}

class LeaveApplication {
  int leaveappid;
  int uid;
  String leavetype;
  String startdate;
  String enddate;
  String reason;
  String status;

  LeaveApplication({
    required this.leaveappid,
    required this.uid,
    required this.leavetype,
    required this.startdate,
    required this.enddate,
    required this.reason,
    required this.status,
  });

  factory LeaveApplication.fromJson(Map<String, dynamic> json) =>
      LeaveApplication(
        leaveappid: json["leaveappid"],
        uid: json["Uid"],
        leavetype: json["leavetype"],
        startdate: json["startdate"],
        enddate: json["enddate"],
        reason: json["reason"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "leaveappid": leaveappid,
        "Uid": uid,
        "leavetype": leavetype,
        "startdate": startdate,
        "enddate": enddate,
        "reason": reason,
        "status": status,
      };
}
