
class Foremployeecommitteewithmember {
  Committee? committee;
  User13? user;
  List<Jobremarkofmembers6>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  Foremployeecommitteewithmember({this.committee, this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  Foremployeecommitteewithmember.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee.fromJson(json["Committee"]);
    }
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User13.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers6.fromJson(e)).toList();
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Jobremarkofmembers6 {
  JobApplication5? jobApplication;
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers6({this.jobApplication, this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers6.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication5.fromJson(json["JobApplication"]);
    }
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class JobApplication5 {
  User14? user;
  List<JobApplicationCommittees8>? jobApplicationCommittees;
  Job14? job;
  List<Jobremarkofmembers11>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication5({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication5.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User14.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees8.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job14.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers11.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers11 {
  CommitteeMember1? committeeMember;
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers11({this.committeeMember, this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers11.fromJson(Map<String, dynamic> json) {
    if(json["CommitteeMember"] is Map) {
      committeeMember = json["CommitteeMember"] == null ? null : CommitteeMember1.fromJson(json["CommitteeMember"]);
    }
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committeeMember != null) {
      _data["CommitteeMember"] = committeeMember?.toJson();
    }
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class CommitteeMember1 {
  Committee6? committee;
  User32? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMember1({this.committee, this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMember1.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee6.fromJson(json["Committee"]);
    }
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User32.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User32 {
  List<dynamic>? jobApplications;
  List<Attendances20>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers15>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User32({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User32.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances20.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers15.fromJson(e)).toList();
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class CommitteeMembers15 {
  Committee8? committee;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers15({this.committee, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers15.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee8.fromJson(json["Committee"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Committee8 {
  User33? user;
  List<CommitteeMembers18>? committeeMembers;
  List<JobApplicationCommittees21>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee8({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee8.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User33.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers18.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees21.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees21 {
  JobApplication11? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees21({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees21.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication11.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication11 {
  User36? user;
  List<dynamic>? jobApplicationCommittees;
  Job20? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication11({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication11.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User36.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job20.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

class Job20 {
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

  Job20({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job20.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User36 {
  List<JobApplications8>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations11>? educations;
  List<Experiences11>? experiences;
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

  User36({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User36.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications8.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations11.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences11.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences11 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences11({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences11.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations11 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations11({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations11.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications8 {
  List<JobApplicationCommittees22>? jobApplicationCommittees;
  Job19? job;
  List<Jobremarkofmembers14>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications8({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications8.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees22.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job19.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers14.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers14 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers14({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers14.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job19 {
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

  Job19({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job19.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees22 {
  Committee9? committee;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees22({this.committee, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees22.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee9.fromJson(json["Committee"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class Committee9 {
  User37? user;
  List<CommitteeMembers19>? committeeMembers;
  List<JobApplicationCommittees23>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee9({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee9.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User37.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers19.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees23.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees23 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees23({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees23.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers19 {
  User38? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers19({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers19.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User38.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User38 {
  List<dynamic>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers20>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User38({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User38.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers20.fromJson(e)).toList();
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class CommitteeMembers20 {
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers20({this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers20.fromJson(Map<String, dynamic> json) {
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User37 {
  List<dynamic>? jobApplications;
  List<Attendances23>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User37({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User37.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances23.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances23 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances23({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances23.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class CommitteeMembers18 {
  User35? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers18({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers18.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User35.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User35 {
  List<dynamic>? jobApplications;
  List<Attendances22>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User35({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User35.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances22.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances22 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances22({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances22.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User33 {
  List<dynamic>? jobApplications;
  List<Attendances21>? attendances;
  List<dynamic>? leaveApplication;
  List<Committees3>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User33({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User33.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances21.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] == null ? null : (json["Committees"] as List).map((e) => Committees3.fromJson(e)).toList();
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees?.map((e) => e.toJson()).toList();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Committees3 {
  List<CommitteeMembers16>? committeeMembers;
  List<JobApplicationCommittees20>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committees3({this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committees3.fromJson(Map<String, dynamic> json) {
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers16.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees20.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees20 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees20({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees20.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers16 {
  User34? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers16({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers16.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User34.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User34 {
  List<dynamic>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers17>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User34({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User34.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers17.fromJson(e)).toList();
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class CommitteeMembers17 {
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers17({this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers17.fromJson(Map<String, dynamic> json) {
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Attendances21 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances21({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances21.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class Attendances20 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  dynamic checkout;

  Attendances20({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances20.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
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

class Committee6 {
  User25? user;
  List<CommitteeMembers12>? committeeMembers;
  List<JobApplicationCommittees19>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee6({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee6.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User25.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers12.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees19.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees19 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees19({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees19.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers12 {
  User28? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers12({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers12.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User28.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User28 {
  List<dynamic>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers13>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User28({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User28.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers13.fromJson(e)).toList();
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class CommitteeMembers13 {
  Committee7? committee;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers13({this.committee, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers13.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee7.fromJson(json["Committee"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Committee7 {
  User29? user;
  List<CommitteeMembers14>? committeeMembers;
  List<JobApplicationCommittees17>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee7({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee7.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User29.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers14.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees17.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees17 {
  JobApplication10? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees17({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees17.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication10.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication10 {
  User31? user;
  List<dynamic>? jobApplicationCommittees;
  Job18? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication10({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication10.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User31.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job18.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

class Job18 {
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

  Job18({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job18.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User31 {
  List<JobApplications7>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations10>? educations;
  List<Experiences10>? experiences;
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

  User31({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User31.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications7.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations10.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences10.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences10 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences10({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences10.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations10 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations10({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations10.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications7 {
  List<JobApplicationCommittees18>? jobApplicationCommittees;
  Job17? job;
  List<Jobremarkofmembers13>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications7({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications7.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees18.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job17.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers13.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers13 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers13({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers13.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job17 {
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

  Job17({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job17.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees18 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees18({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees18.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers14 {
  User30? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers14({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers14.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User30.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User30 {
  List<dynamic>? jobApplications;
  List<Attendances19>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User30({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User30.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances19.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances19 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances19({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances19.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User29 {
  List<dynamic>? jobApplications;
  List<Attendances18>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User29({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User29.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances18.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances18 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances18({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances18.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User25 {
  List<dynamic>? jobApplications;
  List<Attendances16>? attendances;
  List<dynamic>? leaveApplication;
  List<Committees2>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User25({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User25.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances16.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] == null ? null : (json["Committees"] as List).map((e) => Committees2.fromJson(e)).toList();
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees?.map((e) => e.toJson()).toList();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Committees2 {
  List<CommitteeMembers11>? committeeMembers;
  List<JobApplicationCommittees15>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committees2({this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committees2.fromJson(Map<String, dynamic> json) {
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers11.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees15.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees15 {
  JobApplication9? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees15({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees15.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication9.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication9 {
  User27? user;
  List<dynamic>? jobApplicationCommittees;
  Job16? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication9({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication9.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User27.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job16.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

class Job16 {
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

  Job16({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job16.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User27 {
  List<JobApplications6>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations9>? educations;
  List<Experiences9>? experiences;
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

  User27({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User27.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications6.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations9.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences9.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences9 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences9({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences9.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations9 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations9({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations9.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications6 {
  List<JobApplicationCommittees16>? jobApplicationCommittees;
  Job15? job;
  List<Jobremarkofmembers12>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications6({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications6.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees16.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job15.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers12.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers12 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers12({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers12.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job15 {
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

  Job15({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job15.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees16 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees16({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees16.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers11 {
  User26? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers11({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers11.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User26.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User26 {
  List<dynamic>? jobApplications;
  List<Attendances17>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User26({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User26.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances17.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances17 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances17({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances17.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class Attendances16 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances16({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances16.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class Job14 {
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

  Job14({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job14.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees8 {
  Committee3? committee;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees8({this.committee, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees8.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee3.fromJson(json["Committee"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class Committee3 {
  User15? user;
  List<CommitteeMembers7>? committeeMembers;
  List<JobApplicationCommittees13>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee3({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee3.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User15.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers7.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees13.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees13 {
  JobApplication8? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees13({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees13.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication8.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication8 {
  User22? user;
  List<dynamic>? jobApplicationCommittees;
  Job13? job;
  List<Jobremarkofmembers10>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication8({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication8.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User22.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job13.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers10.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers10 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers10({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers10.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job13 {
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

  Job13({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job13.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User22 {
  List<JobApplications5>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations8>? educations;
  List<Experiences8>? experiences;
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

  User22({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User22.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications5.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations8.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences8.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences8 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences8({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences8.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations8 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations8({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations8.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications5 {
  List<JobApplicationCommittees14>? jobApplicationCommittees;
  Job12? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications5({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications5.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees14.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job12.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

class Job12 {
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

  Job12({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job12.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees14 {
  Committee5? committee;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees14({this.committee, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees14.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee5.fromJson(json["Committee"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class Committee5 {
  User23? user;
  List<CommitteeMembers10>? committeeMembers;
  List<dynamic>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee5({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee5.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User23.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers10.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class CommitteeMembers10 {
  User24? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers10({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers10.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User24.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User24 {
  List<dynamic>? jobApplications;
  List<Attendances15>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User24({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User24.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances15.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances15 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances15({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances15.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User23 {
  List<dynamic>? jobApplications;
  List<Attendances14>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User23({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User23.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances14.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances14 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances14({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances14.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class CommitteeMembers7 {
  User18? user;
  List<Jobremarkofmembers9>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers7({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers7.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User18.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers9.fromJson(e)).toList();
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Jobremarkofmembers9 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers9({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers9.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class User18 {
  List<dynamic>? jobApplications;
  List<Attendances11>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers8>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User18({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User18.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances11.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers8.fromJson(e)).toList();
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class CommitteeMembers8 {
  Committee4? committee;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers8({this.committee, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers8.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee4.fromJson(json["Committee"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Committee4 {
  User19? user;
  List<CommitteeMembers9>? committeeMembers;
  List<JobApplicationCommittees11>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee4({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee4.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User19.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers9.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees11.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees11 {
  JobApplication7? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees11({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees11.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication7.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication7 {
  User21? user;
  List<dynamic>? jobApplicationCommittees;
  Job11? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication7({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication7.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User21.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job11.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

class Job11 {
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

  Job11({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job11.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User21 {
  List<JobApplications4>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations7>? educations;
  List<Experiences7>? experiences;
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

  User21({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User21.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications4.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations7.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences7.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences7 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences7({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences7.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations7 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations7({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations7.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications4 {
  List<JobApplicationCommittees12>? jobApplicationCommittees;
  Job10? job;
  List<Jobremarkofmembers8>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications4({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications4.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees12.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job10.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers8.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers8 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers8({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers8.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job10 {
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

  Job10({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job10.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees12 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees12({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees12.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers9 {
  User20? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers9({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers9.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User20.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User20 {
  List<dynamic>? jobApplications;
  List<Attendances13>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User20({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User20.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances13.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances13 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances13({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances13.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User19 {
  List<dynamic>? jobApplications;
  List<Attendances12>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User19({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User19.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances12.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances12 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances12({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances12.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class Attendances11 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  dynamic checkout;

  Attendances11({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances11.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
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

class User15 {
  List<dynamic>? jobApplications;
  List<Attendances9>? attendances;
  List<dynamic>? leaveApplication;
  List<Committees1>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User15({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User15.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances9.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] == null ? null : (json["Committees"] as List).map((e) => Committees1.fromJson(e)).toList();
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees?.map((e) => e.toJson()).toList();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Committees1 {
  List<CommitteeMembers6>? committeeMembers;
  List<JobApplicationCommittees9>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committees1({this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committees1.fromJson(Map<String, dynamic> json) {
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers6.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees9.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees9 {
  JobApplication6? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees9({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees9.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication6.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication6 {
  User17? user;
  List<dynamic>? jobApplicationCommittees;
  Job9? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication6({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication6.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User17.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job9.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

class Job9 {
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

  Job9({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job9.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User17 {
  List<JobApplications3>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations6>? educations;
  List<Experiences6>? experiences;
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

  User17({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User17.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications3.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations6.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences6.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences6 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences6({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences6.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations6 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations6({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations6.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications3 {
  List<JobApplicationCommittees10>? jobApplicationCommittees;
  Job8? job;
  List<Jobremarkofmembers7>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications3({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications3.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees10.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job8.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers7.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers7 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers7({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers7.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job8 {
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

  Job8({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job8.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees10 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees10({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees10.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers6 {
  User16? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers6({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers6.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User16.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User16 {
  List<dynamic>? jobApplications;
  List<Attendances10>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User16({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User16.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances10.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances10 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances10({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances10.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class Attendances9 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances9({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances9.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User14 {
  List<dynamic>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations5>? educations;
  List<Experiences5>? experiences;
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

  User14({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User14.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations5.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences5.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences5 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  dynamic currentwork;
  String? enddate;
  String? otherskill;

  Experiences5({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences5.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    currentwork = json["currentwork"];
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations5 {
  int? eduId;
  int? uid;
  String? degree;
  dynamic major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations5({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations5.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    major = json["major"];
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class User13 {
  List<dynamic>? jobApplications;
  List<Attendances8>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User13({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User13.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances8.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances8 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances8({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances8.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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
  List<JobApplicationCommittees5>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers1.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees5.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees5 {
  JobApplication3? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees5({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees5.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication3.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication3 {
  User8? user;
  List<dynamic>? jobApplicationCommittees;
  Job5? job;
  List<Jobremarkofmembers4>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication3({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication3.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User8.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job5.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers4.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers4 {
  CommitteeMember? committeeMember;
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers4({this.committeeMember, this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers4.fromJson(Map<String, dynamic> json) {
    if(json["CommitteeMember"] is Map) {
      committeeMember = json["CommitteeMember"] == null ? null : CommitteeMember.fromJson(json["CommitteeMember"]);
    }
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committeeMember != null) {
      _data["CommitteeMember"] = committeeMember?.toJson();
    }
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class CommitteeMember {
  User9? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMember({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMember.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User9.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User9 {
  List<dynamic>? jobApplications;
  List<Attendances5>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers4>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User9({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User9.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances5.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers4.fromJson(e)).toList();
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class CommitteeMembers4 {
  Committee2? committee;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers4({this.committee, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers4.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee2.fromJson(json["Committee"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Committee2 {
  User10? user;
  List<CommitteeMembers5>? committeeMembers;
  List<JobApplicationCommittees6>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee2({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee2.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User10.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers5.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees6.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees6 {
  JobApplication4? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees6({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees6.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication4.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication4 {
  User12? user;
  List<dynamic>? jobApplicationCommittees;
  Job7? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication4({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication4.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User12.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job7.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

class Job7 {
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

  Job7({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job7.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User12 {
  List<JobApplications2>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations4>? educations;
  List<Experiences4>? experiences;
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

  User12({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User12.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications2.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations4.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences4.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences4 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences4({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences4.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations4 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations4({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations4.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications2 {
  List<JobApplicationCommittees7>? jobApplicationCommittees;
  Job6? job;
  List<Jobremarkofmembers5>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications2({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications2.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees7.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job6.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers5.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers5 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers5({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers5.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job6 {
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

  Job6({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job6.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees7 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees7({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees7.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers5 {
  User11? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers5({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers5.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User11.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User11 {
  List<dynamic>? jobApplications;
  List<Attendances7>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User11({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User11.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances7.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances7 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances7({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances7.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User10 {
  List<dynamic>? jobApplications;
  List<Attendances6>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User10({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User10.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances6.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

class Attendances6 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  String? checkout;

  Attendances6({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances6.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class Attendances5 {
  int? attendanceid;
  int? uid;
  String? date;
  String? checkin;
  String? status;
  dynamic checkout;

  Attendances5({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances5.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
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

class Job5 {
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

  Job5({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job5.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User8 {
  List<dynamic>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations3>? educations;
  List<Experiences3>? experiences;
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

  User8({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User8.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations3.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences3.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

  Experiences3({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences3.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    currentwork = json["currentwork"];
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations3 {
  int? eduId;
  int? uid;
  String? degree;
  dynamic major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations3({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations3.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    major = json["major"];
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class CommitteeMembers1 {
  User3? user;
  List<Jobremarkofmembers2>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers1({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers1.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User3.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers2.fromJson(e)).toList();
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Jobremarkofmembers2 {
  JobApplication2? jobApplication;
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers2({this.jobApplication, this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers2.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication2.fromJson(json["JobApplication"]);
    }
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class JobApplication2 {
  User7? user;
  List<JobApplicationCommittees4>? jobApplicationCommittees;
  Job4? job;
  List<Jobremarkofmembers3>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication2({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication2.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User7.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees4.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job4.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers3.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers3 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers3({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers3.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job4 {
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

  Job4({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job4.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees4 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees4({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees4.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class User7 {
  List<dynamic>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations2>? educations;
  List<Experiences2>? experiences;
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

  User7({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User7.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations2.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences2.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences2 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  dynamic currentwork;
  String? enddate;
  String? otherskill;

  Experiences2({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences2.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    currentwork = json["currentwork"];
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations2 {
  int? eduId;
  int? uid;
  String? degree;
  dynamic major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations2({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations2.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    major = json["major"];
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class User3 {
  List<dynamic>? jobApplications;
  List<Attendances2>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<CommitteeMembers2>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User3({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User3.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances2.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers2.fromJson(e)).toList();
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers2({this.committee, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers2.fromJson(Map<String, dynamic> json) {
    if(json["Committee"] is Map) {
      committee = json["Committee"] == null ? null : Committee1.fromJson(json["Committee"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committee != null) {
      _data["Committee"] = committee?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class Committee1 {
  User4? user;
  List<CommitteeMembers3>? committeeMembers;
  List<JobApplicationCommittees2>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committee1({this.user, this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committee1.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User4.fromJson(json["User"]);
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers3.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees2.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    _data["CommitteeId"] = committeeId;
    _data["CommitteeTitle"] = committeeTitle;
    _data["CommitteeHead"] = committeeHead;
    return _data;
  }
}

class JobApplicationCommittees2 {
  JobApplication1? jobApplication;
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees2({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees2.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication1.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication1 {
  User6? user;
  List<dynamic>? jobApplicationCommittees;
  Job3? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication1({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication1.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User6.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job3.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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
  int? noofvacancie;

  Job3({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job3.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User6 {
  List<JobApplications1>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations1>? educations;
  List<Experiences1>? experiences;
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

  User6({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User6.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications1.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations1.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences1.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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

class Experiences1 {
  int? expId;
  int? uid;
  String? company;
  String? title;
  String? startdate;
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences1({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences1.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations1 {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations1({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations1.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications1 {
  List<JobApplicationCommittees3>? jobApplicationCommittees;
  Job2? job;
  List<Jobremarkofmembers1>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications1({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications1.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees3.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job2.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers1.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers1 {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers1({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers1.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
    return _data;
  }
}

class Job2 {
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

  Job2({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job2.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees3 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees3({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees3.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers3 {
  User5? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers3({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers3.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User5.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User5 {
  List<dynamic>? jobApplications;
  List<Attendances4>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User5({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User5.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances4.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

  Attendances4({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances4.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

class User4 {
  List<dynamic>? jobApplications;
  List<Attendances3>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User4({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User4.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances3.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

  Attendances3({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances3.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

  Attendances2({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances2.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
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
  List<dynamic>? jobApplications;
  List<Attendances>? attendances;
  List<dynamic>? leaveApplication;
  List<Committees>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] == null ? null : (json["Committees"] as List).map((e) => Committees.fromJson(e)).toList();
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees?.map((e) => e.toJson()).toList();
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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
  List<JobApplicationCommittees>? jobApplicationCommittees;
  int? committeeId;
  String? committeeTitle;
  int? committeeHead;

  Committees({this.committeeMembers, this.jobApplicationCommittees, this.committeeId, this.committeeTitle, this.committeeHead});

  Committees.fromJson(Map<String, dynamic> json) {
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] == null ? null : (json["CommitteeMembers"] as List).map((e) => CommitteeMembers.fromJson(e)).toList();
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees.fromJson(e)).toList();
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["CommitteeTitle"] is String) {
      committeeTitle = json["CommitteeTitle"];
    }
    if(json["CommitteeHead"] is int) {
      committeeHead = json["CommitteeHead"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers?.map((e) => e.toJson()).toList();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
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

  JobApplicationCommittees({this.jobApplication, this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees.fromJson(Map<String, dynamic> json) {
    if(json["JobApplication"] is Map) {
      jobApplication = json["JobApplication"] == null ? null : JobApplication.fromJson(json["JobApplication"]);
    }
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplication != null) {
      _data["JobApplication"] = jobApplication?.toJson();
    }
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class JobApplication {
  User2? user;
  List<dynamic>? jobApplicationCommittees;
  Job1? job;
  List<dynamic>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplication({this.user, this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplication.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User2.fromJson(json["User"]);
    }
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] ?? [];
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job1.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees;
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
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

  Job1({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job1.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class User2 {
  List<JobApplications>? jobApplications;
  List<dynamic>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<Educations>? educations;
  List<Experiences>? experiences;
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

  User2({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User2.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] == null ? null : (json["JobApplications"] as List).map((e) => JobApplications.fromJson(e)).toList();
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] ?? [];
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] == null ? null : (json["Educations"] as List).map((e) => Educations.fromJson(e)).toList();
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] == null ? null : (json["Experiences"] as List).map((e) => Experiences.fromJson(e)).toList();
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications?.map((e) => e.toJson()).toList();
    }
    if(attendances != null) {
      _data["Attendances"] = attendances;
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations?.map((e) => e.toJson()).toList();
    }
    if(experiences != null) {
      _data["Experiences"] = experiences?.map((e) => e.toJson()).toList();
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
  String? currentwork;
  String? enddate;
  String? otherskill;

  Experiences({this.expId, this.uid, this.company, this.title, this.startdate, this.currentwork, this.enddate, this.otherskill});

  Experiences.fromJson(Map<String, dynamic> json) {
    if(json["ExpID"] is int) {
      expId = json["ExpID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Company"] is String) {
      company = json["Company"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["currentwork"] is String) {
      currentwork = json["currentwork"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
    if(json["otherskill"] is String) {
      otherskill = json["otherskill"];
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
    return _data;
  }
}

class Educations {
  int? eduId;
  int? uid;
  String? degree;
  String? major;
  String? institute;
  String? board;
  String? startdate;
  String? enddate;

  Educations({this.eduId, this.uid, this.degree, this.major, this.institute, this.board, this.startdate, this.enddate});

  Educations.fromJson(Map<String, dynamic> json) {
    if(json["EduID"] is int) {
      eduId = json["EduID"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Degree"] is String) {
      degree = json["Degree"];
    }
    if(json["major"] is String) {
      major = json["major"];
    }
    if(json["Institute"] is String) {
      institute = json["Institute"];
    }
    if(json["Board"] is String) {
      board = json["Board"];
    }
    if(json["Startdate"] is String) {
      startdate = json["Startdate"];
    }
    if(json["Enddate"] is String) {
      enddate = json["Enddate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["EduID"] = eduId;
    _data["Uid"] = uid;
    _data["Degree"] = degree;
    _data["major"] = major;
    _data["Institute"] = institute;
    _data["Board"] = board;
    _data["Startdate"] = startdate;
    _data["Enddate"] = enddate;
    return _data;
  }
}

class JobApplications {
  List<JobApplicationCommittees1>? jobApplicationCommittees;
  Job? job;
  List<Jobremarkofmembers>? jobremarkofmembers;
  int? jobApplicationId;
  int? jid;
  int? uid;
  String? name;
  String? status;
  dynamic shortlist;
  String? documentPath;

  JobApplications({this.jobApplicationCommittees, this.job, this.jobremarkofmembers, this.jobApplicationId, this.jid, this.uid, this.name, this.status, this.shortlist, this.documentPath});

  JobApplications.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommittees"] is List) {
      jobApplicationCommittees = json["JobApplicationCommittees"] == null ? null : (json["JobApplicationCommittees"] as List).map((e) => JobApplicationCommittees1.fromJson(e)).toList();
    }
    if(json["Job"] is Map) {
      job = json["Job"] == null ? null : Job.fromJson(json["Job"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] == null ? null : (json["jobremarkofmembers"] as List).map((e) => Jobremarkofmembers.fromJson(e)).toList();
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    shortlist = json["shortlist"];
    if(json["DocumentPath"] is String) {
      documentPath = json["DocumentPath"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplicationCommittees != null) {
      _data["JobApplicationCommittees"] = jobApplicationCommittees?.map((e) => e.toJson()).toList();
    }
    if(job != null) {
      _data["Job"] = job?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers?.map((e) => e.toJson()).toList();
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

class Jobremarkofmembers {
  int? remarkId;
  int? committeeMemberId;
  int? jobApplicationId;
  int? remarks;

  Jobremarkofmembers({this.remarkId, this.committeeMemberId, this.jobApplicationId, this.remarks});

  Jobremarkofmembers.fromJson(Map<String, dynamic> json) {
    if(json["RemarkID"] is int) {
      remarkId = json["RemarkID"];
    }
    if(json["CommitteeMemberId"] is int) {
      committeeMemberId = json["CommitteeMemberId"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["Remarks"] is int) {
      remarks = json["Remarks"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["RemarkID"] = remarkId;
    _data["CommitteeMemberId"] = committeeMemberId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["Remarks"] = remarks;
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

  Job({this.jobApplications, this.jid, this.title, this.qualification, this.salary, this.experience, this.lastDateOfApply, this.location, this.description, this.noofvacancie});

  Job.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Jid"] is int) {
      jid = json["Jid"];
    }
    if(json["Title"] is String) {
      title = json["Title"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["Salary"] is String) {
      salary = json["Salary"];
    }
    if(json["experience"] is String) {
      experience = json["experience"];
    }
    if(json["LastDateOfApply"] is String) {
      lastDateOfApply = json["LastDateOfApply"];
    }
    if(json["Location"] is String) {
      location = json["Location"];
    }
    if(json["Description"] is String) {
      description = json["Description"];
    }
    if(json["noofvacancie"] is int) {
      noofvacancie = json["noofvacancie"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
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

class JobApplicationCommittees1 {
  int? jobApplicationCommitteeId;
  int? jobApplicationId;
  int? committeeId;

  JobApplicationCommittees1({this.jobApplicationCommitteeId, this.jobApplicationId, this.committeeId});

  JobApplicationCommittees1.fromJson(Map<String, dynamic> json) {
    if(json["JobApplicationCommitteeID"] is int) {
      jobApplicationCommitteeId = json["JobApplicationCommitteeID"];
    }
    if(json["JobApplicationID"] is int) {
      jobApplicationId = json["JobApplicationID"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["JobApplicationCommitteeID"] = jobApplicationCommitteeId;
    _data["JobApplicationID"] = jobApplicationId;
    _data["CommitteeId"] = committeeId;
    return _data;
  }
}

class CommitteeMembers {
  User1? user;
  List<dynamic>? jobremarkofmembers;
  int? committeeImemberId;
  int? committeeId;
  int? uid;

  CommitteeMembers({this.user, this.jobremarkofmembers, this.committeeImemberId, this.committeeId, this.uid});

  CommitteeMembers.fromJson(Map<String, dynamic> json) {
    if(json["User"] is Map) {
      user = json["User"] == null ? null : User1.fromJson(json["User"]);
    }
    if(json["jobremarkofmembers"] is List) {
      jobremarkofmembers = json["jobremarkofmembers"] ?? [];
    }
    if(json["CommitteeImemberId"] is int) {
      committeeImemberId = json["CommitteeImemberId"];
    }
    if(json["CommitteeId"] is int) {
      committeeId = json["CommitteeId"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["User"] = user?.toJson();
    }
    if(jobremarkofmembers != null) {
      _data["jobremarkofmembers"] = jobremarkofmembers;
    }
    _data["CommitteeImemberId"] = committeeImemberId;
    _data["CommitteeId"] = committeeId;
    _data["Uid"] = uid;
    return _data;
  }
}

class User1 {
  List<dynamic>? jobApplications;
  List<Attendances1>? attendances;
  List<dynamic>? leaveApplication;
  List<dynamic>? committees;
  List<dynamic>? committeeMembers;
  List<dynamic>? educations;
  List<dynamic>? experiences;
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

  User1({this.jobApplications, this.attendances, this.leaveApplication, this.committees, this.committeeMembers, this.educations, this.experiences, this.uid, this.fname, this.lname, this.email, this.mobile, this.cnic, this.dob, this.gender, this.address, this.password, this.role, this.image});

  User1.fromJson(Map<String, dynamic> json) {
    if(json["JobApplications"] is List) {
      jobApplications = json["JobApplications"] ?? [];
    }
    if(json["Attendances"] is List) {
      attendances = json["Attendances"] == null ? null : (json["Attendances"] as List).map((e) => Attendances1.fromJson(e)).toList();
    }
    if(json["Leave_Application"] is List) {
      leaveApplication = json["Leave_Application"] ?? [];
    }
    if(json["Committees"] is List) {
      committees = json["Committees"] ?? [];
    }
    if(json["CommitteeMembers"] is List) {
      committeeMembers = json["CommitteeMembers"] ?? [];
    }
    if(json["Educations"] is List) {
      educations = json["Educations"] ?? [];
    }
    if(json["Experiences"] is List) {
      experiences = json["Experiences"] ?? [];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["Fname"] is String) {
      fname = json["Fname"];
    }
    if(json["Lname"] is String) {
      lname = json["Lname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["cnic"] is String) {
      cnic = json["cnic"];
    }
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jobApplications != null) {
      _data["JobApplications"] = jobApplications;
    }
    if(attendances != null) {
      _data["Attendances"] = attendances?.map((e) => e.toJson()).toList();
    }
    if(leaveApplication != null) {
      _data["Leave_Application"] = leaveApplication;
    }
    if(committees != null) {
      _data["Committees"] = committees;
    }
    if(committeeMembers != null) {
      _data["CommitteeMembers"] = committeeMembers;
    }
    if(educations != null) {
      _data["Educations"] = educations;
    }
    if(experiences != null) {
      _data["Experiences"] = experiences;
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

  Attendances1({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances1.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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

  Attendances({this.attendanceid, this.uid, this.date, this.checkin, this.status, this.checkout});

  Attendances.fromJson(Map<String, dynamic> json) {
    if(json["Attendanceid"] is int) {
      attendanceid = json["Attendanceid"];
    }
    if(json["Uid"] is int) {
      uid = json["Uid"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["checkin"] is String) {
      checkin = json["checkin"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["checkout"] is String) {
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