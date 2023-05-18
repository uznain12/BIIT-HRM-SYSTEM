// To parse this JSON data, do
//
//     final leavemodel = leavemodelFromJson(jsonString);

import 'dart:convert';

List<Leavemodel> leavemodelFromJson(String str) =>
    List<Leavemodel>.from(json.decode(str).map((x) => Leavemodel.fromJson(x)));

String leavemodelToJson(List<Leavemodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Leavemodel {
  User user;
  int leaveappid;
  int uid;
  String leavetype;
  String startdate;
  String enddate;
  String reason;
  String status;
  DateTime applydate;

  Leavemodel({
    required this.user,
    required this.leaveappid,
    required this.uid,
    required this.leavetype,
    required this.startdate,
    required this.enddate,
    required this.reason,
    required this.status,
    required this.applydate,
  });

  factory Leavemodel.fromJson(Map<String, dynamic> json) => Leavemodel(
        user: User.fromJson(json["User"]),
        leaveappid: json["leaveappid"],
        uid: json["Uid"],
        leavetype: json["leavetype"],
        startdate: json["startdate"],
        enddate: json["enddate"],
        reason: json["reason"],
        status: json["status"],
        applydate: (json["applydate"] != null && json["applydate"].trim() != "")
            ? DateTime.parse(json["applydate"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "User": user.toJson(),
        "leaveappid": leaveappid,
        "Uid": uid,
        "leavetype": leavetype,
        "startdate": startdate,
        "enddate": enddate,
        "reason": reason,
        "status": status,
        "applydate": applydate,
      };
}

class User {
  List<dynamic> educations;
  List<dynamic> jobApplications;
  List<dynamic> leaveApplication;
  List<Experience> experiences;
  List<Attendance> attendances;
  int uid;
  String fname;
  String lname;
  String email;
  String mobile;
  String cnic;
  DateTime dob;
  String gender;
  String address;
  String password;
  String role;
  String? image;

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
    this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        educations: List<dynamic>.from(json["Educations"].map((x) => x)),
        jobApplications:
            List<dynamic>.from(json["JobApplications"].map((x) => x)),
        leaveApplication:
            List<dynamic>.from(json["Leave_Application"].map((x) => x)),
        experiences: List<Experience>.from(
            json["Experiences"].map((x) => Experience.fromJson(x))),
        attendances: List<Attendance>.from(
            json["Attendances"].map((x) => Attendance.fromJson(x))),
        uid: json["Uid"],
        fname: json["Fname"],
        lname: json["Lname"],
        email: json["email"],
        mobile: json["mobile"],
        cnic: json["cnic"],
        dob: DateTime.parse(json["dob"]),
        gender: json["gender"],
        address: json["address"],
        password: json["password"],
        role: json["role"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "Educations": List<dynamic>.from(educations.map((x) => x)),
        "JobApplications": List<dynamic>.from(jobApplications.map((x) => x)),
        "Leave_Application": List<dynamic>.from(leaveApplication.map((x) => x)),
        "Experiences": List<dynamic>.from(experiences.map((x) => x.toJson())),
        "Attendances": List<dynamic>.from(attendances.map((x) => x.toJson())),
        "Uid": uid,
        "Fname": fname,
        "Lname": lname,
        "email": email,
        "mobile": mobile,
        "cnic": cnic,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "address": address,
        "password": password,
        "role": role,
        "image": image,
      };
}

class Attendance {
  int attendanceid;
  int uid;
  String checkin;
  String? checkout;
  DateTime date;
  String? status;

  Attendance({
    required this.attendanceid,
    required this.uid,
    required this.checkin,
    this.checkout,
    required this.date,
    this.status,
  });

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        attendanceid: json["Attendanceid"],
        uid: json["Uid"],
        checkin: json["checkin"],
        checkout: json["checkout"],
        date: DateTime.parse(json["date"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "Attendanceid": attendanceid,
        "Uid": uid,
        "checkin": checkin,
        "checkout": checkout,
        "date": date.toIso8601String(),
        "status": status,
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
