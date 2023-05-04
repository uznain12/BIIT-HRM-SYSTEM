// To parse this JSON data, do
//
//     final attendancemodel = attendancemodelFromJson(jsonString);

import 'dart:convert';

Attendancemodel attendancemodelFromJson(String str) =>
    Attendancemodel.fromJson(json.decode(str));

String attendancemodelToJson(Attendancemodel data) =>
    json.encode(data.toJson());

class Attendancemodel {
  User user;
  List<AttendanceRecord> attendanceRecords;

  Attendancemodel({
    required this.user,
    required this.attendanceRecords,
  });

  factory Attendancemodel.fromJson(Map<String, dynamic> json) =>
      Attendancemodel(
        user: User.fromJson(json["user"] ?? {}),
        attendanceRecords: List<AttendanceRecord>.from(
            (json["attendanceRecords"] ?? [])
                .map((x) => AttendanceRecord.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "attendanceRecords":
            List<dynamic>.from(attendanceRecords.map((x) => x.toJson())),
      };
}

class AttendanceRecord {
  DateTime date;
  List<Record> records;

  AttendanceRecord({
    required this.date,
    required this.records,
  });

  // factory AttendanceRecord.fromJson(Map<String, dynamic> json) =>
  //     AttendanceRecord(
  //       date: DateTime.parse(json["date"]),
  //       records: List<Record>.from(
  //           (json["records"] ?? {}).map((x) => Record.fromJson(x))),
  //     );
  factory AttendanceRecord.fromJson(Map<String, dynamic> json) =>
      AttendanceRecord(
        date: DateTime.parse(json["date"]),
        records: List<Record>.from(
            (json["records"] ?? []).map((x) => Record.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "records": List<dynamic>.from(records.map((x) => x.toJson())),
      };
}

class Record {
  String fname;
  int uid;
  String checkin;
  String checkout;
  String status;

  Record({
    required this.fname,
    required this.uid,
    required this.checkin,
    required this.checkout,
    required this.status,
  });

  factory Record.fromJson(Map<String, dynamic> json) => Record(
        fname: json["Fname"] ?? '',
        uid: json["Uid"] ?? 0,
        checkin: json["checkin"] ?? '',
        checkout: json["checkout"] ?? '',
        status: json["status"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "Fname": fname,
        "Uid": uid,
        "checkin": checkin,
        "checkout": checkout,
        "status": status,
      };
}

class User {
  int uid;
  String fname;
  String lname;
  String email;
  String role;
  String mobile;
  String cnic;
  DateTime dob;
  String gender;
  String address;
  dynamic image;

  User({
    required this.uid,
    required this.fname,
    required this.lname,
    required this.email,
    required this.role,
    required this.mobile,
    required this.cnic,
    required this.dob,
    required this.gender,
    required this.address,
    this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        uid: json["Uid"] ?? 0,
        fname: json["Fname"] ?? '',
        lname: json["Lname"] ?? '',
        email: json["email"] ?? '',
        role: json["role"] ?? '',
        mobile: json["mobile"] ?? '',
        cnic: json["cnic"] ?? '',
        dob: DateTime.parse(json["dob"] ?? '1970-01-01'),
        gender: json["gender"] ?? '',
        address: json["address"] ?? '',
        image: json["image"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "Uid": uid,
        "Fname": fname,
        "Lname": lname,
        "email": email,
        "role": role,
        "mobile": mobile,
        "cnic": cnic,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "address": address,
        "image": image,
      };
}
