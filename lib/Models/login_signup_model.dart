import 'package:fyp_practise_project/uri.dart';

import 'package:http/http.dart' as http;

class LoginModel {
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
  dynamic image;
  Null? apply;
  List<Null>? educations;
  List<Null>? experiences;
  LoginModel();

  LoginModel.frommap(Map<String, dynamic> map) {
    uid = map['Uid'];
    fname = map['Fname'] ?? '';
    lname = map['Lname'] ?? '';
    email = map['email'] ?? '';
    mobile = map['mobile'] ?? '';
    cnic = map['cnic'] ?? '';
    dob = map['dob'] ?? '';
    gender = map['gender'] ?? '';
    address = map['address'] ?? '';
    password = map['password'] ?? '';
    role = map['role'] ?? '';
    apply = map['Apply'];
    image = map['image'] ?? '';
  }

  Map<String, dynamic> tomap() {
    return <String, dynamic>{
      'Uid': uid,
      'Fname': fname,
      'Lname': lname,
      'email': email,
      'mobile': mobile,
      'cnic': cnic,
      'dob': dob,
      'gender': gender,
      'address': address,
      'password': password,
      'role': role,
      'Apply': apply,
      'image': image,
    };
  }

  Future<String?> login() async {
    String url =
        'http://$ip/HrmPractise02/api/User/Login?email=${email}&password=${password}';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      print('response' + response.body);
      return response.body;
    }
    return null;
  }
}
