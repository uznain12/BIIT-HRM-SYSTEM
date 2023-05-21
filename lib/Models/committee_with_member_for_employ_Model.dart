class Foremployeecommitteewithmember {
  Committee? committee;
  User6? user;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  Foremployeecommitteewithmember(
      {this.committee,
      this.user,
      this.committeeImemberId,
      this.committeeId,
      this.uid});

  Foremployeecommitteewithmember.fromJson(Map<String, dynamic> json) {
    if (json["Committee"] is Map) {
      committee = json["Committee"] == null
          ? null
          : Committee.fromJson(json["Committee"]);
    }
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User6.fromJson(json["User"]);
    }
    if (json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User6 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<Attendances5>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  int? uid;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? cnic;
  String? dob;
  String? gender;
  String? address;
  String? password;
  String? role;
  String? image;

  User6(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.leaveApplication,
      this.committees,
      this.committeeMembers,
      this.uid,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.cnic,
      this.dob,
      this.gender,
      this.address,
      this.password,
      this.role,
      this.image});

  User6.fromJson(Map<String, dynamic> json) {
    if (json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances5.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if (json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Fname"] is String) {
      fname = json["Fname"];
    }
    if (json["Lname"] is String) {
      lname = json["Lname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if (json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (educations != null) {
      _data["Educations"] = educations;
    }
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if (committees != null) {
      _data["Committees"] = committees;
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    _data["Uid"] = uid;
    _data["Fname"] = fname;
    _data["Lname"] = lname;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["cnic"] = cnic;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["address"] = address;
    _data["password"] = password;
    _data["role"] = role;
    _data["image"] = image;
    return _data;
  }
}

class Attendances5 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances5(
      {this.attendanceid,
      this.uid,
      this.date,
      this.checkin,
      this.status,
      this.checkout});

  Attendances5.fromJson(Map<String, dynamic> json) {
    if (json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["checkout"] is String) {
      checkout = json["checkout"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Attendanceid"] = attendanceid;
    _data["Uid"] = uid;
    _data["date"] = date;
    _data["checkin"] = checkin;
    _data["status"] = status;
    _data["checkout"] = checkout;
    return _data;
  }
}

class Committee {
  User? user;
  List<CommitteeMembers1>? committeeMembers;
  List<JobApplicationCommittees>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee(
      {this.user,
      this.committeeMembers,
      this.jobApplicationCommittees,
      this.committeeId,
      this.committeeTitle,
      this.committeeHead});

  Committee.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User.fromJson(json["User"]);
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null
          ? null
          : (json["CommitteeMembers"] as List)
              .map((e) => CommitteeMembers1.fromJson(e))
              .toList();
    }
    if (json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null
          ? null
          : (json["JobApplicationCommittees"] as List)
              .map((e) => JobApplicationCommittees.fromJson(e))
              .toList();
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if (json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] =
          committeeMembers?.map((e) => e.toJson()).toList();
    }
    if (jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] =
          jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees {
  JobApplication? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees(
      {this.jobApplication,
      this.jobApplicationCommitteeId,
      this.jobApplicationId,
      this.committeeId});

  JobApplicationCommittees.fromJson(Map<String, dynamic> json) {
    if (json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null
          ? null
          : JobApplication.fromJson(json["JobApplication"]);
    }
    if (json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication {
  User5? user;
  List<dynamic>? jobApplicationCommittees;
  Job? job;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication(
      {this.user,
      this.jobApplicationCommittees,
      this.job,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplication.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User5.fromJson(json["User"]);
    }
    if (json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if (json["Job"] is Map) {
      job = json["Job"] == null ? null : Job.fromJson(json["Job"]);
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if (json["Jid"] is int) {
      jid = json["Jid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if (json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    if (jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if (job != null) {
      _data["Job"] = job?.toJson();
    }
    _data["JobApplicationID"] = jobApplicationId;
    _data["Jid"] = jid;
    _data["Uid"] = uid;
    _data["name"] = name;
    _data["status"] = status;
    _data["shortlist"] = shortlist;
    _data["DocumentPath"] = documentPath;
    return _data;
  }
}

class Job {
  List<dynamic>? jobApplications;
  int? jid;
  String? title;
  String? qualification;
  String? salary;
  String? experience;
  String? lastDateOfApply;
  String? location;
  String? description;
  int? noofvacancie;

  Job(
      {this.jobApplications,
      this.jid,
      this.title,
      this.qualification,
      this.salary,
      this.experience,
      this.lastDateOfApply,
      this.location,
      this.description,
      this.noofvacancie});

  Job.fromJson(Map<String, dynamic> json) {
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Jid"] is int) {
      jid = json["Jid"];
    }
    if (json["Title"] is String) {
      title = json["Title"];
    }
    if (json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if (json["Salary"] is String) {
      salary = json["Salary"];
    }
    if (json["experience"] is String) {
      experience = json["experience"];
    }
    if (json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if (json["Location"] is String) {
      location = json["Location"];
    }
    if (json["Description"] is String) {
      description = json["Description"];
    }
    if (json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    _data["Jid"] = jid;
    _data["Title"] = title;
    _data["qualification"] = qualification;
    _data["Salary"] = salary;
    _data["experience"] = experience;
    _data["LastDateOfApply"] = lastDateOfApply;
    _data["Location"] = location;
    _data["Description"] = description;
    _data["noofvacancie"] = noofvacancie;
    return _data;
  }
}

class User5 {
  List<Educations>? educations;
  List<dynamic>? jobApplications;
  List<Experiences>? experiences;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  int? uid;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? cnic;
  String? dob;
  String? gender;
  String? address;
  String? password;
  String? role;
  String? image;

  User5(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.leaveApplication,
      this.committees,
      this.committeeMembers,
      this.uid,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.cnic,
      this.dob,
      this.gender,
      this.address,
      this.password,
      this.role,
      this.image});

  User5.fromJson(Map<String, dynamic> json) {
    if (json["Educations"] is List) {
      educations = json["Educations"] == null
          ? null
          : (json["Educations"] as List)
              .map((e) => Educations.fromJson(e))
              .toList();
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] == null
          ? null
          : (json["Experiences"] as List)
              .map((e) => Experiences.fromJson(e))
              .toList();
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if (json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Fname"] is String) {
      fname = json["Fname"];
    }
    if (json["Lname"] is String) {
      lname = json["Lname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if (json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if (experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
    }
    if (attendances != null) {
      _data["Attendances"] = attendances;
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if (committees != null) {
      _data["Committees"] = committees;
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    _data["Uid"] = uid;
    _data["Fname"] = fname;
    _data["Lname"] = lname;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["cnic"] = cnic;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["address"] = address;
    _data["password"] = password;
    _data["role"] = role;
    _data["image"] = image;
    return _data;
  }
}

class Experiences {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  dynamic currentwork;
  String? enddate;
  String? otherskill;
  String? hasexperienced;

  Experiences(
      {this.expId,
      this.uid,
      this.company,
      this.title,
      this.startdate,
      this.currentwork,
      this.enddate,
      this.otherskill,
      this.hasexperienced});

  Experiences.fromJson(Map<String, dynamic> json) {
    if (json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Company"] is String) {
      company = json["Company"];
    }
    if (json["Title"] is String) {
      title = json["Title"];
    }
    if (json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    currentwork = json["currentwork"];
    if (json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if (json["otherskill"] is String) {
      otherskill = json["otherskill"];
    }
    if (json["hasexperienced"] is String) {
      hasexperienced = json["hasexperienced"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ExpID"] = expId;
    _data["Uid"] = uid;
    _data["Company"] = company;
    _data["Title"] = title;
    _data["Startdate"] = startdate;
    _data["currentwork"] = currentwork;
    _data["Enddate"] = enddate;
    _data["otherskill"] = otherskill;
    _data["hasexperienced"] = hasexperienced;
    return _data;
  }
}

class Educations {
  int? eduId;
  int? uid;
  String? degree;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;
  String? hasaddededucation;

  Educations(
      {this.eduId,
      this.uid,
      this.degree,
      this.institute,
      this.board,
      this.startdate,
      this.enddate,
      this.hasaddededucation});

  Educations.fromJson(Map<String, dynamic> json) {
    if (json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Degree"] is String) {
      degree = json["Degree"];
    }
    if (json["Institute"] is String) {
      institute = json["Institute"];
    }
    if (json["Board"] is String) {
      board = json["Board"];
    }
    if (json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if (json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if (json["hasaddededucation"] is String) {
      hasaddededucation = json["hasaddededucation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    _data["hasaddededucation"] = hasaddededucation;
    return _data;
  }
}

class CommitteeMembers1 {
  User2? user;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers1(
      {this.user, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers1.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User2.fromJson(json["User"]);
    }
    if (json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User2 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<Attendances2>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers2>? committeeMembers;
  int? uid;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? cnic;
  String? dob;
  String? gender;
  String? address;
  String? password;
  String? role;
  String? image;

  User2(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.leaveApplication,
      this.committees,
      this.committeeMembers,
      this.uid,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.cnic,
      this.dob,
      this.gender,
      this.address,
      this.password,
      this.role,
      this.image});

  User2.fromJson(Map<String, dynamic> json) {
    if (json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances2.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if (json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null
          ? null
          : (json["CommitteeMembers"] as List)
              .map((e) => CommitteeMembers2.fromJson(e))
              .toList();
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Fname"] is String) {
      fname = json["Fname"];
    }
    if (json["Lname"] is String) {
      lname = json["Lname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if (json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (educations != null) {
      _data["Educations"] = educations;
    }
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if (committees != null) {
      _data["Committees"] = committees;
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] =
          committeeMembers?.map((e) => e.toJson()).toList();
    }
    _data["Uid"] = uid;
    _data["Fname"] = fname;
    _data["Lname"] = lname;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["cnic"] = cnic;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["address"] = address;
    _data["password"] = password;
    _data["role"] = role;
    _data["image"] = image;
    return _data;
  }
}

class CommitteeMembers2 {
  Committee1? committee;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers2(
      {this.committee, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers2.fromJson(Map<String, dynamic> json) {
    if (json["Committee"] is Map) {
      committee = json["Committee"] == null
          ? null
          : Committee1.fromJson(json["Committee"]);
    }
    if (json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Committee1 {
  User3? user;
  List<CommitteeMembers3>? committeeMembers;
  List<dynamic>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee1(
      {this.user,
      this.committeeMembers,
      this.jobApplicationCommittees,
      this.committeeId,
      this.committeeTitle,
      this.committeeHead});

  Committee1.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User3.fromJson(json["User"]);
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null
          ? null
          : (json["CommitteeMembers"] as List)
              .map((e) => CommitteeMembers3.fromJson(e))
              .toList();
    }
    if (json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if (json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] =
          committeeMembers?.map((e) => e.toJson()).toList();
    }
    if (jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class CommitteeMembers3 {
  User4? user;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers3(
      {this.user, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers3.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User4.fromJson(json["User"]);
    }
    if (json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User4 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<Attendances4>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  int? uid;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? cnic;
  String? dob;
  String? gender;
  String? address;
  String? password;
  String? role;
  String? image;

  User4(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.leaveApplication,
      this.committees,
      this.committeeMembers,
      this.uid,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.cnic,
      this.dob,
      this.gender,
      this.address,
      this.password,
      this.role,
      this.image});

  User4.fromJson(Map<String, dynamic> json) {
    if (json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances4.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if (json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Fname"] is String) {
      fname = json["Fname"];
    }
    if (json["Lname"] is String) {
      lname = json["Lname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if (json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (educations != null) {
      _data["Educations"] = educations;
    }
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if (committees != null) {
      _data["Committees"] = committees;
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    _data["Uid"] = uid;
    _data["Fname"] = fname;
    _data["Lname"] = lname;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["cnic"] = cnic;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["address"] = address;
    _data["password"] = password;
    _data["role"] = role;
    _data["image"] = image;
    return _data;
  }
}

class Attendances4 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances4(
      {this.attendanceid,
      this.uid,
      this.date,
      this.checkin,
      this.status,
      this.checkout});

  Attendances4.fromJson(Map<String, dynamic> json) {
    if (json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["checkout"] is String) {
      checkout = json["checkout"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Attendanceid"] = attendanceid;
    _data["Uid"] = uid;
    _data["date"] = date;
    _data["checkin"] = checkin;
    _data["status"] = status;
    _data["checkout"] = checkout;
    return _data;
  }
}

class User3 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<Attendances3>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  int? uid;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? cnic;
  String? dob;
  String? gender;
  String? address;
  String? password;
  String? role;
  String? image;

  User3(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.leaveApplication,
      this.committees,
      this.committeeMembers,
      this.uid,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.cnic,
      this.dob,
      this.gender,
      this.address,
      this.password,
      this.role,
      this.image});

  User3.fromJson(Map<String, dynamic> json) {
    if (json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances3.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if (json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Fname"] is String) {
      fname = json["Fname"];
    }
    if (json["Lname"] is String) {
      lname = json["Lname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if (json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (educations != null) {
      _data["Educations"] = educations;
    }
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if (committees != null) {
      _data["Committees"] = committees;
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    _data["Uid"] = uid;
    _data["Fname"] = fname;
    _data["Lname"] = lname;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["cnic"] = cnic;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["address"] = address;
    _data["password"] = password;
    _data["role"] = role;
    _data["image"] = image;
    return _data;
  }
}

class Attendances3 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances3(
      {this.attendanceid,
      this.uid,
      this.date,
      this.checkin,
      this.status,
      this.checkout});

  Attendances3.fromJson(Map<String, dynamic> json) {
    if (json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["checkout"] is String) {
      checkout = json["checkout"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Attendanceid"] = attendanceid;
    _data["Uid"] = uid;
    _data["date"] = date;
    _data["checkin"] = checkin;
    _data["status"] = status;
    _data["checkout"] = checkout;
    return _data;
  }
}

class Attendances2 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  dynamic checkout;

  Attendances2(
      {this.attendanceid,
      this.uid,
      this.date,
      this.checkin,
      this.status,
      this.checkout});

  Attendances2.fromJson(Map<String, dynamic> json) {
    if (json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    checkout = json["checkout"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Attendanceid"] = attendanceid;
    _data["Uid"] = uid;
    _data["date"] = date;
    _data["checkin"] = checkin;
    _data["status"] = status;
    _data["checkout"] = checkout;
    return _data;
  }
}

class User {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<Attendances>? attendances;
  List<dynamic>? leaveApplication;
  List<Committees>? committees;
  List<dynamic>? committeeMembers;
  int? uid;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? cnic;
  String? dob;
  String? gender;
  String? address;
  String? password;
  String? role;
  String? image;

  User(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.leaveApplication,
      this.committees,
      this.committeeMembers,
      this.uid,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.cnic,
      this.dob,
      this.gender,
      this.address,
      this.password,
      this.role,
      this.image});

  User.fromJson(Map<String, dynamic> json) {
    if (json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if (json["Committees"] is List) {
      committees = json["Committees"] == null
          ? null
          : (json["Committees"] as List)
              .map((e) => Committees.fromJson(e))
              .toList();
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Fname"] is String) {
      fname = json["Fname"];
    }
    if (json["Lname"] is String) {
      lname = json["Lname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if (json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (educations != null) {
      _data["Educations"] = educations;
    }
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if (committees != null) {
      _data["Committees"] = committees?.map((e) => e.toJson()).toList();
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    _data["Uid"] = uid;
    _data["Fname"] = fname;
    _data["Lname"] = lname;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["cnic"] = cnic;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["address"] = address;
    _data["password"] = password;
    _data["role"] = role;
    _data["image"] = image;
    return _data;
  }
}

class Committees {
  List<CommitteeMembers>? committeeMembers;
  List<dynamic>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committees(
      {this.committeeMembers,
      this.jobApplicationCommittees,
      this.committeeId,
      this.committeeTitle,
      this.committeeHead});

  Committees.fromJson(Map<String, dynamic> json) {
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null
          ? null
          : (json["CommitteeMembers"] as List)
              .map((e) => CommitteeMembers.fromJson(e))
              .toList();
    }
    if (json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if (json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (committeeMembers != null) {
      _data["CommitteeMembers"] =
          committeeMembers?.map((e) => e.toJson()).toList();
    }
    if (jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class CommitteeMembers {
  User1? user;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers(
      {this.user, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User1.fromJson(json["User"]);
    }
    if (json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if (json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User1 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<Attendances1>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  int? uid;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? cnic;
  String? dob;
  String? gender;
  String? address;
  String? password;
  String? role;
  String? image;

  User1(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.leaveApplication,
      this.committees,
      this.committeeMembers,
      this.uid,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.cnic,
      this.dob,
      this.gender,
      this.address,
      this.password,
      this.role,
      this.image});

  User1.fromJson(Map<String, dynamic> json) {
    if (json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances1.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if (json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if (json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["Fname"] is String) {
      fname = json["Fname"];
    }
    if (json["Lname"] is String) {
      lname = json["Lname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if (json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (educations != null) {
      _data["Educations"] = educations;
    }
    if (jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if (committees != null) {
      _data["Committees"] = committees;
    }
    if (committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    _data["Uid"] = uid;
    _data["Fname"] = fname;
    _data["Lname"] = lname;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["cnic"] = cnic;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["address"] = address;
    _data["password"] = password;
    _data["role"] = role;
    _data["image"] = image;
    return _data;
  }
}

class Attendances1 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances1(
      {this.attendanceid,
      this.uid,
      this.date,
      this.checkin,
      this.status,
      this.checkout});

  Attendances1.fromJson(Map<String, dynamic> json) {
    if (json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["checkout"] is String) {
      checkout = json["checkout"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Attendanceid"] = attendanceid;
    _data["Uid"] = uid;
    _data["date"] = date;
    _data["checkin"] = checkin;
    _data["status"] = status;
    _data["checkout"] = checkout;
    return _data;
  }
}

class Attendances {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances(
      {this.attendanceid,
      this.uid,
      this.date,
      this.checkin,
      this.status,
      this.checkout});

  Attendances.fromJson(Map<String, dynamic> json) {
    if (json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["checkout"] is String) {
      checkout = json["checkout"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Attendanceid"] = attendanceid;
    _data["Uid"] = uid;
    _data["date"] = date;
    _data["checkin"] = checkin;
    _data["status"] = status;
    _data["checkout"] = checkout;
    return _data;
  }
}
