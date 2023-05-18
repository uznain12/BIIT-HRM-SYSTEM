// To parse this JSON data, do
//
//     final jobApplicationModel = jobApplicationModelFromJson(jsonString);

import 'dart:convert';

List<JobApplicationModel> jobApplicationModelFromJson(String str) =>
    List<JobApplicationModel>.from(
        json.decode(str).map((x) => JobApplicationModel.fromJson(x)));

String jobApplicationModelToJson(List<JobApplicationModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.educations,
    required this.experiences,
    required this.jobApplications,
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

  List<Education> educations;
  List<Experience> experiences;
  List<JobApplicationModel> jobApplications;
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
  dynamic image;

  factory User.fromJson(Map<String, dynamic> json) => User(
        educations: json["Educations"] != null
            ? List<Education>.from(
                json["Educations"].map((x) => Education.fromJson(x)))
            : [],
        experiences: List<Experience>.from(
            json["Experiences"].map((x) => Experience.fromJson(x))),
        jobApplications: List<JobApplicationModel>.from(json["JobApplications"]
            .map((x) => JobApplicationModel.fromJson(x))),
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
        "Educations": List<dynamic>.from(educations.map((x) => x.toJson())),
        "Experiences": List<dynamic>.from(experiences.map((x) => x.toJson())),
        "JobApplications":
            List<dynamic>.from(jobApplications.map((x) => x.toJson())),
        "Uid": uid,
        "Fname": fname,
        "Lname": lname,
        "email": email,
        "mobile": mobile,
        "cnic": cnic,
        "dob": dob.toIso8601String(),
        "gender": gender,
        "address": address,
        "password": password,
        "role": role,
        "image": image,
      };
}

class JobApplicationModel {
  JobApplicationModel({
    required this.job,
    this.user,
    required this.jobApplicationId,
    required this.jid,
    required this.uid,
    required this.name,
    required this.status,
    required this.DocumentPath,
  });

  Job job;
  User? user;
  int jobApplicationId;
  int jid;
  int uid;
  String name;
  bool isSelected = false;
  String status;
  String DocumentPath;

  factory JobApplicationModel.fromJson(Map<String, dynamic> json) =>
      JobApplicationModel(
          job: Job.fromJson(json["Job"]),
          user: json["User"] == null ? null : User.fromJson(json["User"]),
          jobApplicationId: json["JobApplicationID"],
          jid: json["Jid"],
          uid: json["Uid"],
          name: json["name"],
          status: json["status"],
          DocumentPath: json["DocumentPath"] ?? '');

  Map<String, dynamic> toJson() => {
        "Job": job.toJson(),
        "User": user?.toJson(),
        "JobApplicationID": jobApplicationId,
        "Jid": jid,
        "Uid": uid,
        "name": name,
        "status": status,
      };
}

// class Education {
//   Education({
//     required this.eduId,
//     required this.uid,
//     required this.degree,
//     required this.institute,
//     required this.board,
//     this.startdate,
//     this.enddate,
//     required this.hasaddededucation,
//   });

//   int eduId;
//   int uid;
//   Degree degree;
//   String institute;
//   Board board;
//   int? startdate;
//   int? enddate;
//   Hasaddededucation hasaddededucation;

//   factory Education.fromJson(Map<String, dynamic> json) => Education(
//         eduId: json["EduID"],
//         uid: json["Uid"],
//         degree: degreeValues.map[json["Degree"]]!,
//         institute: json["Institute"],
//         board: boardValues.map[json["Board"]]!,
//         startdate: json["Startdate"],
//         enddate: json["Enddate"],
//         hasaddededucation:
//             hasaddededucationValues.map[json["hasaddededucation"]]!,
//       );

//   Map<String, dynamic> toJson() => {
//         "EduID": eduId,
//         "Uid": uid,
//         "Degree": degreeValues.reverse[degree],
//         "Institute": institute,
//         "Board": boardValues.reverse[board],
//         "Startdate": startdate,
//         "Enddate": enddate,
//         "hasaddededucation": hasaddededucationValues.reverse[hasaddededucation],
//       };
// }

class Education {
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

  int eduId;
  int uid;
  String degree;
  String institute;
  String board;
  String startdate;
  String enddate;
  String hasaddededucation;

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        eduId: json["EduID"],
        uid: json["Uid"] ?? 0,
        degree: json["Degree"],
        institute: json["Institute"],
        board: json["Board"],
        startdate: json["Startdate"] ?? '',
        enddate: json["Enddate"] ?? '',
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
// To parse this JSON data, do
//
//     final experienceModel = experienceModelFromJson(jsonString);

class Experience {
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

  int expId;
  int uid;
  String company;
  String title;
  String startdate;
  String currentwork;
  String enddate;
  String otherskill;
  String hasexperienced;

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        expId: json["ExpID"],
        uid: json["Uid"],
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
        "Company": company,
        "Title": title,
        "Startdate": startdate,
        "currentwork": currentwork,
        "Enddate": enddate,
        "otherskill": otherskill,
        "hasexperienced": hasexperienced,
      };
}

class Job {
  Job({
    required this.jobApplications,
    required this.jid,
    required this.title,
    required this.description,
    required this.salary,
    required this.lastDateOfApply,
    required this.location,
    required this.experience,
    required this.qualification,
  });

  List<dynamic> jobApplications;
  int jid;
  String title;
  String description;
  String salary;
  String lastDateOfApply;
  String location;
  String experience;
  String qualification;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        jobApplications:
            List<dynamic>.from(json["JobApplications"].map((x) => x)),
        jid: json["Jid"],
        title: json["Title"],
        description: json["Description"],
        salary: json["Salary"],
        lastDateOfApply: json["LastDateOfApply"],
        location: json["Location"],
        experience: json["experience"] ?? '',
        qualification: json["qualification"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "JobApplications": List<dynamic>.from(jobApplications.map((x) => x)),
        "Jid": jid,
        "Title": title,
        "Description": description,
        "Salary": salary,
        "LastDateOfApply": lastDateOfApply,
        "Location": location,
        "experience": experience,
        "qualification": qualification,
      };
}

class JobApply {
  JobApply({
    required this.jpid,
    required this.uid,
    required this.jid,
    required this.name,
  });

  int jpid;
  int uid;
  int jid;
  String name;

  factory JobApply.fromJson(Map<String, dynamic> json) => JobApply(
        jpid: json["Jpid"],
        uid: json["Uid"],
        jid: json["Jid"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "Jpid": jpid,
        "Uid": uid,
        "Jid": jid,
        "name": name,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
