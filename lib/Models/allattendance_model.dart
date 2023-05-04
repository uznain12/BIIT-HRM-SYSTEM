// To parse this JSON data, do
//
//     final allAttendanceModel = allAttendanceModelFromJson(jsonString);

import 'dart:convert';

List<AllAttendanceModel> allAttendanceModelFromJson(String str) =>
    List<AllAttendanceModel>.from(
        json.decode(str).map((x) => AllAttendanceModel.fromJson(x)));

String allAttendanceModelToJson(List<AllAttendanceModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  List<Education> educations;
  List<dynamic> jobApplications;
  List<dynamic> leaveApplication;
  List<Experience> experiences;
  List<AllAttendanceModel> attendances;
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
        educations: List<Education>.from(
            json["Educations"].map((x) => Education.fromJson(x))),
        jobApplications:
            List<dynamic>.from(json["JobApplications"].map((x) => x)),
        leaveApplication:
            List<dynamic>.from(json["Leave_Application"].map((x) => x)),
        experiences: List<Experience>.from(
            json["Experiences"].map((x) => Experience.fromJson(x))),
        attendances: List<AllAttendanceModel>.from(
            json["Attendances"].map((x) => AllAttendanceModel.fromJson(x))),
        uid: json["Uid"],
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
        "Educations": List<dynamic>.from(educations.map((x) => x.toJson())),
        "JobApplications": List<dynamic>.from(jobApplications.map((x) => x)),
        "Leave_Application": List<dynamic>.from(leaveApplication.map((x) => x)),
        "Experiences": List<dynamic>.from(experiences.map((x) => x.toJson())),
        "Attendances": List<dynamic>.from(attendances.map((x) => x.toJson())),
        "Uid": uid,
        "Fname": fnameValues.reverse[fname],
        "Lname": lnameValues.reverse[lname],
        "email": emailValues.reverse[email],
        "mobile": mobile,
        "cnic": cnicValues.reverse[cnic],
        "dob": dob,
        "gender": genderValues.reverse[gender],
        "address": addressValues.reverse[address],
        "password": passwordValues.reverse[password],
        "role": roleValues.reverse[role],
        "image": imageValues.reverse[image],
      };
}

class AllAttendanceModel {
  User? user;
  int attendanceid;
  int uid;
  String checkin;
  String? checkout;
  DateTime date;
  String status;

  AllAttendanceModel({
    this.user,
    required this.attendanceid,
    required this.uid,
    required this.checkin,
    required this.checkout,
    required this.date,
    required this.status,
  });

  factory AllAttendanceModel.fromJson(Map<String, dynamic> json) {
    DateTime parsedDate;
    try {
      parsedDate = DateTime.parse(json["date"] ?? '');
    } catch (e) {
      parsedDate =
          DateTime.now(); // Set a default value, like the current date and time
    }

    return AllAttendanceModel(
      user: json["User"] == null ? null : User.fromJson(json["User"]),
      attendanceid: json["Attendanceid"] ?? 0,
      uid: json["Uid"] ?? 0,
      checkin: json["checkin"] ?? '',
      checkout: json["checkout"] ?? '',
      date: parsedDate,
      status: json["status"] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "User": user?.toJson(),
        "Attendanceid": attendanceid,
        "Uid": uid,
        "checkin": checkinValues.reverse[checkin],
        "checkout": checkoutValues.reverse[checkout],
        "date": date.toIso8601String(),
        "status": statusValues.reverse[status],
      };
}

enum Address {
  MURRE_ROAD_RAWALPINDI,
  THE_456_SECOND_ST_OTHERTOWN_USA,
  THE_789_THIRD_ST_ANOTHERPLACE_USA,
  STREET_02_FAISAL_COLONY
}

final addressValues = EnumValues({
  "Murre road Rawalpindi": Address.MURRE_ROAD_RAWALPINDI,
  "Street 02 faisal colony": Address.STREET_02_FAISAL_COLONY,
  "456 Second St, Othertown, USA": Address.THE_456_SECOND_ST_OTHERTOWN_USA,
  "789 Third St, Anotherplace, USA": Address.THE_789_THIRD_ST_ANOTHERPLACE_USA
});

enum Cnic {
  THE_1234567890123,
  THE_9876543210987,
  THE_5555555555555,
  THE_39387282828283
}

final cnicValues = EnumValues({
  "12345-6789012-3": Cnic.THE_1234567890123,
  "39387282828283": Cnic.THE_39387282828283,
  "55555-5555555-5": Cnic.THE_5555555555555,
  "98765-4321098-7": Cnic.THE_9876543210987
});

class Education {
  int eduId;
  int uid;
  String degree;
  String institute;
  String board;
  String startdate;
  String enddate;
  String hasaddededucation;

  Education({
    required this.eduId,
    required this.uid,
    required this.degree,
    required this.institute,
    required this.board,
    required this.startdate,
    required this.enddate,
    required this.hasaddededucation,
  });

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        eduId: json["EduID"],
        uid: json["Uid"],
        degree: json["Degree"],
        institute: json["Institute"],
        board: json["Board"],
        startdate: json["Startdate"],
        enddate: json["Enddate"],
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

enum Email {
  AMIR111_GMAIL_COM,
  JANE_DOE_EXAMPLE_COM,
  BOB_SMITH_EXAMPLE_COM,
  HASA76_GMSSAIL_COM679_FXSDDSSS
}

final emailValues = EnumValues({
  "Amir111@gmail.com": Email.AMIR111_GMAIL_COM,
  "bob.smith@example.com": Email.BOB_SMITH_EXAMPLE_COM,
  "hasa76@gmssail.com679fxsddsss": Email.HASA76_GMSSAIL_COM679_FXSDDSSS,
  "jane.doe@example.com": Email.JANE_DOE_EXAMPLE_COM
});

class Experience {
  int expId;
  int uid;
  String company;
  String title;
  String startdate;
  String currentwork;
  String enddate;
  String otherskill;
  String hasexperienced;

  Experience({
    required this.expId,
    required this.uid,
    required this.company,
    required this.title,
    required this.startdate,
    required this.currentwork,
    required this.enddate,
    required this.otherskill,
    required this.hasexperienced,
  });

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        expId: json["ExpID"] ?? 0,
        uid: json["Uid"] ?? 0,
        company: json["Company"] ?? '',
        title: json["Title"] ?? '',
        startdate: json["Startdate"] ?? '',
        currentwork: json["currentwork"] ?? '',
        enddate: json["Enddate"] ?? '',
        otherskill: json["otherskill"] ?? '',
        hasexperienced: json["hasexperienced"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "ExpID": expId,
        "Uid": uid,
        "Company": companyValues.reverse[company],
        "Title": titleValues.reverse[title],
        "Startdate": startdate,
        "currentwork": currentworkValues.reverse[currentwork],
        "Enddate": enddate,
        "otherskill": otherskillValues.reverse[otherskill],
        "hasexperienced": hasexperiencedValues.reverse[hasexperienced],
      };
}

enum Company { ABC }

final companyValues = EnumValues({"Abc": Company.ABC});

enum Currentwork { CURRENTLY_WORKING }

final currentworkValues =
    EnumValues({"currently working": Currentwork.CURRENTLY_WORKING});

enum Hasexperienced { TRUE }

final hasexperiencedValues = EnumValues({"true      ": Hasexperienced.TRUE});

enum Otherskill { I_AM_A_OFFICIAL_DEVELOPER }

final otherskillValues = EnumValues(
    {"I Am A Official developer": Otherskill.I_AM_A_OFFICIAL_DEVELOPER});

enum Title { DEVELOPER }

final titleValues = EnumValues({"Developer": Title.DEVELOPER});

enum Fname { MUHAMMAD, JANE, BOB, HASSAM }

final fnameValues = EnumValues({
  "Bob": Fname.BOB,
  "Hassam": Fname.HASSAM,
  "Jane": Fname.JANE,
  "Muhammad": Fname.MUHAMMAD
});

enum Gender { MALE, F, M }

final genderValues =
    EnumValues({"F": Gender.F, "M": Gender.M, "Male": Gender.MALE});

enum Image { USER1_1_PNG, BIITLOGO_REMOVEBG_PNG }

final imageValues = EnumValues({
  "biitlogo-removebg.png": Image.BIITLOGO_REMOVEBG_PNG,
  "user1 (1).png": Image.USER1_1_PNG
});

enum Lname { AMIR, DOE, SMITH, KAYANI }

final lnameValues = EnumValues({
  "Amir": Lname.AMIR,
  "Doe": Lname.DOE,
  "kayani": Lname.KAYANI,
  "Smith": Lname.SMITH
});

enum Password { AMIR_786, PASSWORD456, PASSWORD789, UZNAIN_786 }

final passwordValues = EnumValues({
  "amir@786": Password.AMIR_786,
  "password456": Password.PASSWORD456,
  "password789": Password.PASSWORD789,
  "uznain@786": Password.UZNAIN_786
});

enum Role { EMPLOYEE, USER, ADMIN }

final roleValues = EnumValues(
    {"admin": Role.ADMIN, "employee": Role.EMPLOYEE, "user": Role.USER});

enum Checkin {
  THE_303_PM,
  THE_329_PM,
  THE_420_PM,
  THE_431_PM,
  THE_436_PM,
  THE_507_PM,
  THE_509_PM,
  THE_514_PM,
  THE_516_PM,
  THE_525_PM,
  THE_529_PM,
  THE_537_PM,
  THE_556_PM,
  THE_607_PM,
  THE_614_PM,
  THE_620_PM,
  THE_1117_PM
}

final checkinValues = EnumValues({
  "11:17 PM": Checkin.THE_1117_PM,
  "3:03 PM": Checkin.THE_303_PM,
  "3:29 PM": Checkin.THE_329_PM,
  "4:20 PM": Checkin.THE_420_PM,
  "4:31 PM": Checkin.THE_431_PM,
  "4:36 PM": Checkin.THE_436_PM,
  "5:07 PM": Checkin.THE_507_PM,
  "5:09 PM": Checkin.THE_509_PM,
  "5:14 PM": Checkin.THE_514_PM,
  "5:16 PM": Checkin.THE_516_PM,
  "5:25 PM": Checkin.THE_525_PM,
  "5:29 PM": Checkin.THE_529_PM,
  "5:37 PM": Checkin.THE_537_PM,
  "5:56 PM": Checkin.THE_556_PM,
  "6:07 PM": Checkin.THE_607_PM,
  "6:14 PM": Checkin.THE_614_PM,
  "6:20 PM": Checkin.THE_620_PM
});

enum Checkout { THE_320_PM }

final checkoutValues = EnumValues({"3:20 PM": Checkout.THE_320_PM});

enum Status { PRESENT, ABSENT }

final statusValues =
    EnumValues({"Absent": Status.ABSENT, "Present": Status.PRESENT});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
