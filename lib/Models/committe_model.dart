class CommitteModel {
  User? user;
  List<CommitteeMembers1>? committeeMembers;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  CommitteModel(
      {this.user,
      this.committeeMembers,
      this.committeeId,
      this.committeeTitle,
      this.committeeHead});

  CommitteModel.fromJson(Map<String, dynamic> json) {
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
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class CommitteeMembers1 {
  User4? user;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers1(
      {this.user, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers1.fromJson(Map<String, dynamic> json) {
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
  List<Educations1>? educations;
  List<JobApplications3>? jobApplications;
  List<Experiences3>? experiences;
  List<dynamic>? attendances;
  List<dynamic>? jobAssignments;
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
      this.jobAssignments,
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
      educations = json["Educations"] == null
          ? null
          : (json["Educations"] as List)
              .map((e) => Educations1.fromJson(e))
              .toList();
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null
          ? null
          : (json["JobApplications"] as List)
              .map((e) => JobApplications3.fromJson(e))
              .toList();
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] == null
          ? null
          : (json["Experiences"] as List)
              .map((e) => Experiences3.fromJson(e))
              .toList();
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
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
      _data["JobApplications"] =
          jobApplications?.map((e) => e.toJson()).toList();
    }
    if (experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
    }
    if (attendances != null) {
      _data["Attendances"] = attendances;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class Experiences3 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  dynamic currentwork;
  String? enddate;
  String? otherskill;
  String? hasexperienced;

  Experiences3(
      {this.expId,
      this.uid,
      this.company,
      this.title,
      this.startdate,
      this.currentwork,
      this.enddate,
      this.otherskill,
      this.hasexperienced});

  Experiences3.fromJson(Map<String, dynamic> json) {
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

class JobApplications3 {
  List<Shortlists1>? shortlists;
  List<JobAssignments3>? jobAssignments;
  Job5? job;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications3(
      {this.shortlists,
      this.jobAssignments,
      this.job,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplications3.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] == null
          ? null
          : (json["Shortlists"] as List)
              .map((e) => Shortlists1.fromJson(e))
              .toList();
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] == null
          ? null
          : (json["JobAssignments"] as List)
              .map((e) => JobAssignments3.fromJson(e))
              .toList();
    }
    if (json["Job"] is Map) {
      job = json["Job"] == null ? null : Job5.fromJson(json["Job"]);
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists?.map((e) => e.toJson()).toList();
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments?.map((e) => e.toJson()).toList();
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

class Job5 {
  List<dynamic>? jobApplications;
  int? jid;
  String? title;
  dynamic qualification;
  String? salary;
  dynamic experience;
  String? lastDateOfApply;
  String? location;
  String? description;
  dynamic noofvacancie;

  Job5(
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

  Job5.fromJson(Map<String, dynamic> json) {
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Jid"] is int) {
      jid = json["Jid"];
    }
    if (json["Title"] is String) {
      title = json["Title"];
    }
    qualification = json["qualification"];
    if (json["Salary"] is String) {
      salary = json["Salary"];
    }
    experience = json["experience"];
    if (json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if (json["Location"] is String) {
      location = json["Location"];
    }
    if (json["Description"] is String) {
      description = json["Description"];
    }
    noofvacancie = json["noofvacancie"];
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

class JobAssignments3 {
  User5? user;
  int? assignmentid;
  int? jobApplicationId;
  int? uid;

  JobAssignments3(
      {this.user, this.assignmentid, this.jobApplicationId, this.uid});

  JobAssignments3.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User5.fromJson(json["User"]);
    }
    if (json["assignmentid"] is int) {
      assignmentid = json["assignmentid"];
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
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
    _data["assignmentid"] = assignmentid;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User5 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<Experiences2>? experiences;
  List<Attendances1>? attendances;
  List<JobAssignments4>? jobAssignments;
  List<LeaveApplication3>? leaveApplication;
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
      this.jobAssignments,
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
      educations = json["Educations"] ?? [];
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] == null
          ? null
          : (json["Experiences"] as List)
              .map((e) => Experiences2.fromJson(e))
              .toList();
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances1.fromJson(e))
              .toList();
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] == null
          ? null
          : (json["JobAssignments"] as List)
              .map((e) => JobAssignments4.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] == null
          ? null
          : (json["Leave_Application"] as List)
              .map((e) => LeaveApplication3.fromJson(e))
              .toList();
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
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] =
          leaveApplication?.map((e) => e.toJson()).toList();
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

class LeaveApplication3 {
  int? leaveappid;
  int? uid;
  String? leavetype;
  String? startdate;
  String? enddate;
  String? reason;
  String? status;
  dynamic applydate;

  LeaveApplication3(
      {this.leaveappid,
      this.uid,
      this.leavetype,
      this.startdate,
      this.enddate,
      this.reason,
      this.status,
      this.applydate});

  LeaveApplication3.fromJson(Map<String, dynamic> json) {
    if (json["leaveappid"] is int) {
      leaveappid = json["leaveappid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["leavetype"] is String) {
      leavetype = json["leavetype"];
    }
    if (json["startdate"] is String) {
      startdate = json["startdate"];
    }
    if (json["enddate"] is String) {
      enddate = json["enddate"];
    }
    if (json["reason"] is String) {
      reason = json["reason"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    applydate = json["applydate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["leaveappid"] = leaveappid;
    _data["Uid"] = uid;
    _data["leavetype"] = leavetype;
    _data["startdate"] = startdate;
    _data["enddate"] = enddate;
    _data["reason"] = reason;
    _data["status"] = status;
    _data["applydate"] = applydate;
    return _data;
  }
}

class JobAssignments4 {
  JobApplication1? jobApplication;
  int? assignmentid;
  int? jobApplicationId;
  int? uid;

  JobAssignments4(
      {this.jobApplication,
      this.assignmentid,
      this.jobApplicationId,
      this.uid});

  JobAssignments4.fromJson(Map<String, dynamic> json) {
    if (json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null
          ? null
          : JobApplication1.fromJson(json["JobApplication"]);
    }
    if (json["assignmentid"] is int) {
      assignmentid = json["assignmentid"];
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["assignmentid"] = assignmentid;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Uid"] = uid;
    return _data;
  }
}

class JobApplication1 {
  List<dynamic>? shortlists;
  User6? user;
  List<dynamic>? jobAssignments;
  Job4? job;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication1(
      {this.shortlists,
      this.user,
      this.jobAssignments,
      this.job,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplication1.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] ?? [];
    }
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User6.fromJson(json["User"]);
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
    }
    if (json["Job"] is Map) {
      job = json["Job"] == null ? null : Job4.fromJson(json["Job"]);
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists;
    }
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class Job4 {
  List<JobApplications5>? jobApplications;
  int? jid;
  String? title;
  String? qualification;
  String? salary;
  String? experience;
  String? lastDateOfApply;
  String? location;
  String? description;
  dynamic noofvacancie;

  Job4(
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

  Job4.fromJson(Map<String, dynamic> json) {
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null
          ? null
          : (json["JobApplications"] as List)
              .map((e) => JobApplications5.fromJson(e))
              .toList();
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
    noofvacancie = json["noofvacancie"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (jobApplications != null) {
      _data["JobApplications"] =
          jobApplications?.map((e) => e.toJson()).toList();
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

class JobApplications5 {
  List<dynamic>? shortlists;
  List<dynamic>? jobAssignments;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications5(
      {this.shortlists,
      this.jobAssignments,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplications5.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class User6 {
  List<dynamic>? educations;
  List<JobApplications4>? jobApplications;
  List<dynamic>? experiences;
  List<dynamic>? attendances;
  List<dynamic>? jobAssignments;
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
      this.jobAssignments,
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
      jobApplications = json["JobApplications"] == null
          ? null
          : (json["JobApplications"] as List)
              .map((e) => JobApplications4.fromJson(e))
              .toList();
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
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
      _data["JobApplications"] =
          jobApplications?.map((e) => e.toJson()).toList();
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class JobApplications4 {
  List<dynamic>? shortlists;
  List<JobAssignments5>? jobAssignments;
  Job3? job;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications4(
      {this.shortlists,
      this.jobAssignments,
      this.job,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplications4.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] == null
          ? null
          : (json["JobAssignments"] as List)
              .map((e) => JobAssignments5.fromJson(e))
              .toList();
    }
    if (json["Job"] is Map) {
      job = json["Job"] == null ? null : Job3.fromJson(json["Job"]);
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments?.map((e) => e.toJson()).toList();
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

class Job3 {
  List<dynamic>? jobApplications;
  int? jid;
  String? title;
  String? qualification;
  String? salary;
  String? experience;
  String? lastDateOfApply;
  String? location;
  String? description;
  dynamic noofvacancie;

  Job3(
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

  Job3.fromJson(Map<String, dynamic> json) {
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
    noofvacancie = json["noofvacancie"];
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

class JobAssignments5 {
  User7? user;
  int? assignmentid;
  int? jobApplicationId;
  int? uid;

  JobAssignments5(
      {this.user, this.assignmentid, this.jobApplicationId, this.uid});

  JobAssignments5.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User7.fromJson(json["User"]);
    }
    if (json["assignmentid"] is int) {
      assignmentid = json["assignmentid"];
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
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
    _data["assignmentid"] = assignmentid;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User7 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<dynamic>? attendances;
  List<dynamic>? jobAssignments;
  List<LeaveApplication2>? leaveApplication;
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

  User7(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.jobAssignments,
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

  User7.fromJson(Map<String, dynamic> json) {
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
      attendances = json["Attendances"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] == null
          ? null
          : (json["Leave_Application"] as List)
              .map((e) => LeaveApplication2.fromJson(e))
              .toList();
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
      _data["Attendances"] = attendances;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] =
          leaveApplication?.map((e) => e.toJson()).toList();
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

class LeaveApplication2 {
  int? leaveappid;
  int? uid;
  String? leavetype;
  String? startdate;
  String? enddate;
  String? reason;
  String? status;
  dynamic applydate;

  LeaveApplication2(
      {this.leaveappid,
      this.uid,
      this.leavetype,
      this.startdate,
      this.enddate,
      this.reason,
      this.status,
      this.applydate});

  LeaveApplication2.fromJson(Map<String, dynamic> json) {
    if (json["leaveappid"] is int) {
      leaveappid = json["leaveappid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["leavetype"] is String) {
      leavetype = json["leavetype"];
    }
    if (json["startdate"] is String) {
      startdate = json["startdate"];
    }
    if (json["enddate"] is String) {
      enddate = json["enddate"];
    }
    if (json["reason"] is String) {
      reason = json["reason"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    applydate = json["applydate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["leaveappid"] = leaveappid;
    _data["Uid"] = uid;
    _data["leavetype"] = leavetype;
    _data["startdate"] = startdate;
    _data["enddate"] = enddate;
    _data["reason"] = reason;
    _data["status"] = status;
    _data["applydate"] = applydate;
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

class Experiences2 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  dynamic currentwork;
  String? enddate;
  dynamic otherskill;
  String? hasexperienced;

  Experiences2(
      {this.expId,
      this.uid,
      this.company,
      this.title,
      this.startdate,
      this.currentwork,
      this.enddate,
      this.otherskill,
      this.hasexperienced});

  Experiences2.fromJson(Map<String, dynamic> json) {
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
    otherskill = json["otherskill"];
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

class Shortlists1 {
  int? shortlistedId;
  int? applicationId;

  Shortlists1({this.shortlistedId, this.applicationId});

  Shortlists1.fromJson(Map<String, dynamic> json) {
    if (json["ShortlistedID"] is int) {
      shortlistedId = json["ShortlistedID"];
    }
    if (json["ApplicationID"] is int) {
      applicationId = json["ApplicationID"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ShortlistedID"] = shortlistedId;
    _data["ApplicationID"] = applicationId;
    return _data;
  }
}

class Educations1 {
  int? eduId;
  int? uid;
  String? degree;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;
  String? hasaddededucation;

  Educations1(
      {this.eduId,
      this.uid,
      this.degree,
      this.institute,
      this.board,
      this.startdate,
      this.enddate,
      this.hasaddededucation});

  Educations1.fromJson(Map<String, dynamic> json) {
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

class User {
  List<Educations>? educations;
  List<JobApplications>? jobApplications;
  List<Experiences1>? experiences;
  List<dynamic>? attendances;
  List<dynamic>? jobAssignments;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers>? committeeMembers;
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
      this.jobAssignments,
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
      educations = json["Educations"] == null
          ? null
          : (json["Educations"] as List)
              .map((e) => Educations.fromJson(e))
              .toList();
    }
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null
          ? null
          : (json["JobApplications"] as List)
              .map((e) => JobApplications.fromJson(e))
              .toList();
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] == null
          ? null
          : (json["Experiences"] as List)
              .map((e) => Experiences1.fromJson(e))
              .toList();
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
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
              .map((e) => CommitteeMembers.fromJson(e))
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
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if (jobApplications != null) {
      _data["JobApplications"] =
          jobApplications?.map((e) => e.toJson()).toList();
    }
    if (experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
    }
    if (attendances != null) {
      _data["Attendances"] = attendances;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class CommitteeMembers {
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers({this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers.fromJson(Map<String, dynamic> json) {
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
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Experiences1 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  dynamic currentwork;
  String? enddate;
  String? otherskill;
  String? hasexperienced;

  Experiences1(
      {this.expId,
      this.uid,
      this.company,
      this.title,
      this.startdate,
      this.currentwork,
      this.enddate,
      this.otherskill,
      this.hasexperienced});

  Experiences1.fromJson(Map<String, dynamic> json) {
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

class JobApplications {
  List<Shortlists>? shortlists;
  List<JobAssignments>? jobAssignments;
  Job2? job;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications(
      {this.shortlists,
      this.jobAssignments,
      this.job,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplications.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] == null
          ? null
          : (json["Shortlists"] as List)
              .map((e) => Shortlists.fromJson(e))
              .toList();
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] == null
          ? null
          : (json["JobAssignments"] as List)
              .map((e) => JobAssignments.fromJson(e))
              .toList();
    }
    if (json["Job"] is Map) {
      job = json["Job"] == null ? null : Job2.fromJson(json["Job"]);
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists?.map((e) => e.toJson()).toList();
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments?.map((e) => e.toJson()).toList();
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

class Job2 {
  List<dynamic>? jobApplications;
  int? jid;
  String? title;
  dynamic qualification;
  String? salary;
  dynamic experience;
  String? lastDateOfApply;
  String? location;
  String? description;
  dynamic noofvacancie;

  Job2(
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

  Job2.fromJson(Map<String, dynamic> json) {
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if (json["Jid"] is int) {
      jid = json["Jid"];
    }
    if (json["Title"] is String) {
      title = json["Title"];
    }
    qualification = json["qualification"];
    if (json["Salary"] is String) {
      salary = json["Salary"];
    }
    experience = json["experience"];
    if (json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if (json["Location"] is String) {
      location = json["Location"];
    }
    if (json["Description"] is String) {
      description = json["Description"];
    }
    noofvacancie = json["noofvacancie"];
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

class JobAssignments {
  User1? user;
  int? assignmentid;
  int? jobApplicationId;
  int? uid;

  JobAssignments(
      {this.user, this.assignmentid, this.jobApplicationId, this.uid});

  JobAssignments.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User1.fromJson(json["User"]);
    }
    if (json["assignmentid"] is int) {
      assignmentid = json["assignmentid"];
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
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
    _data["assignmentid"] = assignmentid;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User1 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<Experiences>? experiences;
  List<Attendances>? attendances;
  List<JobAssignments1>? jobAssignments;
  List<LeaveApplication1>? leaveApplication;
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
      this.jobAssignments,
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
      experiences = json["Experiences"] == null
          ? null
          : (json["Experiences"] as List)
              .map((e) => Experiences.fromJson(e))
              .toList();
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] == null
          ? null
          : (json["Attendances"] as List)
              .map((e) => Attendances.fromJson(e))
              .toList();
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] == null
          ? null
          : (json["JobAssignments"] as List)
              .map((e) => JobAssignments1.fromJson(e))
              .toList();
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] == null
          ? null
          : (json["Leave_Application"] as List)
              .map((e) => LeaveApplication1.fromJson(e))
              .toList();
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
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
    }
    if (attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments?.map((e) => e.toJson()).toList();
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] =
          leaveApplication?.map((e) => e.toJson()).toList();
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

class LeaveApplication1 {
  int? leaveappid;
  int? uid;
  String? leavetype;
  String? startdate;
  String? enddate;
  String? reason;
  String? status;
  dynamic applydate;

  LeaveApplication1(
      {this.leaveappid,
      this.uid,
      this.leavetype,
      this.startdate,
      this.enddate,
      this.reason,
      this.status,
      this.applydate});

  LeaveApplication1.fromJson(Map<String, dynamic> json) {
    if (json["leaveappid"] is int) {
      leaveappid = json["leaveappid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["leavetype"] is String) {
      leavetype = json["leavetype"];
    }
    if (json["startdate"] is String) {
      startdate = json["startdate"];
    }
    if (json["enddate"] is String) {
      enddate = json["enddate"];
    }
    if (json["reason"] is String) {
      reason = json["reason"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    applydate = json["applydate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["leaveappid"] = leaveappid;
    _data["Uid"] = uid;
    _data["leavetype"] = leavetype;
    _data["startdate"] = startdate;
    _data["enddate"] = enddate;
    _data["reason"] = reason;
    _data["status"] = status;
    _data["applydate"] = applydate;
    return _data;
  }
}

class JobAssignments1 {
  JobApplication? jobApplication;
  int? assignmentid;
  int? jobApplicationId;
  int? uid;

  JobAssignments1(
      {this.jobApplication,
      this.assignmentid,
      this.jobApplicationId,
      this.uid});

  JobAssignments1.fromJson(Map<String, dynamic> json) {
    if (json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null
          ? null
          : JobApplication.fromJson(json["JobApplication"]);
    }
    if (json["assignmentid"] is int) {
      assignmentid = json["assignmentid"];
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["assignmentid"] = assignmentid;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Uid"] = uid;
    return _data;
  }
}

class JobApplication {
  List<dynamic>? shortlists;
  User2? user;
  List<dynamic>? jobAssignments;
  Job1? job;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication(
      {this.shortlists,
      this.user,
      this.jobAssignments,
      this.job,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplication.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] ?? [];
    }
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User2.fromJson(json["User"]);
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
    }
    if (json["Job"] is Map) {
      job = json["Job"] == null ? null : Job1.fromJson(json["Job"]);
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists;
    }
    if (user != null) {
      _data["User"] = user?.toJson();
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class Job1 {
  List<JobApplications2>? jobApplications;
  int? jid;
  String? title;
  String? qualification;
  String? salary;
  String? experience;
  String? lastDateOfApply;
  String? location;
  String? description;
  dynamic noofvacancie;

  Job1(
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

  Job1.fromJson(Map<String, dynamic> json) {
    if (json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null
          ? null
          : (json["JobApplications"] as List)
              .map((e) => JobApplications2.fromJson(e))
              .toList();
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
    noofvacancie = json["noofvacancie"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (jobApplications != null) {
      _data["JobApplications"] =
          jobApplications?.map((e) => e.toJson()).toList();
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

class JobApplications2 {
  List<dynamic>? shortlists;
  List<dynamic>? jobAssignments;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications2(
      {this.shortlists,
      this.jobAssignments,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplications2.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class User2 {
  List<dynamic>? educations;
  List<JobApplications1>? jobApplications;
  List<dynamic>? experiences;
  List<dynamic>? attendances;
  List<dynamic>? jobAssignments;
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

  User2(
      {this.educations,
      this.jobApplications,
      this.experiences,
      this.attendances,
      this.jobAssignments,
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
      jobApplications = json["JobApplications"] == null
          ? null
          : (json["JobApplications"] as List)
              .map((e) => JobApplications1.fromJson(e))
              .toList();
    }
    if (json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if (json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
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
      _data["JobApplications"] =
          jobApplications?.map((e) => e.toJson()).toList();
    }
    if (experiences != null) {
      _data["Experiences"] = experiences;
    }
    if (attendances != null) {
      _data["Attendances"] = attendances;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
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

class JobApplications1 {
  List<dynamic>? shortlists;
  List<JobAssignments2>? jobAssignments;
  Job? job;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications1(
      {this.shortlists,
      this.jobAssignments,
      this.job,
      this.jobApplicationId,
      this.jid,
      this.uid,
      this.name,
      this.status,
      this.shortlist,
      this.documentPath});

  JobApplications1.fromJson(Map<String, dynamic> json) {
    if (json["Shortlists"] is List) {
      shortlists = json["Shortlists"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] == null
          ? null
          : (json["JobAssignments"] as List)
              .map((e) => JobAssignments2.fromJson(e))
              .toList();
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
    if (shortlists != null) {
      _data["Shortlists"] = shortlists;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments?.map((e) => e.toJson()).toList();
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
  dynamic noofvacancie;

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
    noofvacancie = json["noofvacancie"];
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

class JobAssignments2 {
  User3? user;
  int? assignmentid;
  int? jobApplicationId;
  int? uid;

  JobAssignments2(
      {this.user, this.assignmentid, this.jobApplicationId, this.uid});

  JobAssignments2.fromJson(Map<String, dynamic> json) {
    if (json["User"] is Map) {
      user = json["User"] == null ? null : User3.fromJson(json["User"]);
    }
    if (json["assignmentid"] is int) {
      assignmentid = json["assignmentid"];
    }
    if (json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
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
    _data["assignmentid"] = assignmentid;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User3 {
  List<dynamic>? educations;
  List<dynamic>? jobApplications;
  List<dynamic>? experiences;
  List<dynamic>? attendances;
  List<dynamic>? jobAssignments;
  List<LeaveApplication>? leaveApplication;
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
      this.jobAssignments,
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
      attendances = json["Attendances"] ?? [];
    }
    if (json["JobAssignments"] is List) {
      jobAssignments = json["JobAssignments"] ?? [];
    }
    if (json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] == null
          ? null
          : (json["Leave_Application"] as List)
              .map((e) => LeaveApplication.fromJson(e))
              .toList();
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
      _data["Attendances"] = attendances;
    }
    if (jobAssignments != null) {
      _data["JobAssignments"] = jobAssignments;
    }
    if (leaveApplication != null) {
      _data["Leave_Application"] =
          leaveApplication?.map((e) => e.toJson()).toList();
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

class LeaveApplication {
  int? leaveappid;
  int? uid;
  String? leavetype;
  String? startdate;
  String? enddate;
  String? reason;
  String? status;
  dynamic applydate;

  LeaveApplication(
      {this.leaveappid,
      this.uid,
      this.leavetype,
      this.startdate,
      this.enddate,
      this.reason,
      this.status,
      this.applydate});

  LeaveApplication.fromJson(Map<String, dynamic> json) {
    if (json["leaveappid"] is int) {
      leaveappid = json["leaveappid"];
    }
    if (json["Uid"] is int) {
      uid = json["Uid"];
    }
    if (json["leavetype"] is String) {
      leavetype = json["leavetype"];
    }
    if (json["startdate"] is String) {
      startdate = json["startdate"];
    }
    if (json["enddate"] is String) {
      enddate = json["enddate"];
    }
    if (json["reason"] is String) {
      reason = json["reason"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    applydate = json["applydate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["leaveappid"] = leaveappid;
    _data["Uid"] = uid;
    _data["leavetype"] = leavetype;
    _data["startdate"] = startdate;
    _data["enddate"] = enddate;
    _data["reason"] = reason;
    _data["status"] = status;
    _data["applydate"] = applydate;
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

class Experiences {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  dynamic currentwork;
  String? enddate;
  dynamic otherskill;
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
    otherskill = json["otherskill"];
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

class Shortlists {
  int? shortlistedId;
  int? applicationId;

  Shortlists({this.shortlistedId, this.applicationId});

  Shortlists.fromJson(Map<String, dynamic> json) {
    if (json["ShortlistedID"] is int) {
      shortlistedId = json["ShortlistedID"];
    }
    if (json["ApplicationID"] is int) {
      applicationId = json["ApplicationID"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ShortlistedID"] = shortlistedId;
    _data["ApplicationID"] = applicationId;
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
