import 'dart:convert';
import 'dart:developer';
import 'package:help_isko/models/Student/user.dart';
import 'package:help_isko/services/global.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<Map<String, dynamic>> loginStud(
      String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login-stud'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      print('token: $responseData');
      return responseData;
    } else if (response.statusCode == 500) {
      return {
        'message': 'Log in failed',
      };
    } else {
      return throw Exception();
    }
  }

  // static Future<User> studProfile(String token) async {
  //   final response = await http.get(Uri.parse('$baseUrl/stud-profile'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $token'
  //       });

  //   print(response.statusCode);

  //   if (response.statusCode == 200) {
  //     final Map<String, dynamic> responseData = jsonDecode(response.body);

  //     print(responseData);

  //     final profileData = responseData['profile'];
  //     if (profileData != null && profileData != 'null') {
  //       return User(
  //         userId: profileData['id'] ?? "",
  //         name: responseData['name'] ?? "Unknown",
  //         student_number: profileData['student_number'] ?? "N/A",
  //         college: profileData['college'] ?? "N/A",
  //         course: profileData['course'] ?? "N/A",
  //         department: profileData['department'] ?? "N/A",
  //         semester: profileData['semester'] ?? "N/A",
  //         learning_modality: profileData['learning_modality'] ?? "N/A",
  //         birthday: profileData['birthday'] ?? "N/A",
  //         contact_number: profileData['contact_number'] ?? "N/A",
  //         father_name: profileData['father_name'] ?? "N/A",
  //         father_contact_number: profileData['father_contact_number'] ?? "N/A",
  //         mother_name: profileData['mother_name'] ?? "N/A",
  //         mother_contact_number: profileData['mother_contact_number'] ?? "N/A",
  //         current_address: profileData['current_address'] ?? "N/A",
  //         current_province: profileData['current_province'] ?? "N/A",
  //         current_country: profileData['current_country'] ?? "N/A",
  //         current_city: profileData['current_city'] ?? "N/A",
  //         permanent_address: profileData['permanent_address'] ?? "N/A",
  //         permanent_province: profileData['permanent_province'] ?? "N/A",
  //         permanent_country: profileData['permanent_country'] ?? "N/A",
  //         permanent_city: profileData['permanent_city'] ?? "N/A",
  //         emergency_person_name: profileData['emergency_person_name'] ?? "N/A",
  //         emergency_address: profileData['emergency_address'] ?? "N/A",
  //         relation: profileData['relation'] ?? "N/A",
  //         emergency_contact_number:
  //             profileData['emergency_contact_number'] ?? "N/A",
  //         profile_img: profileData['profile_img'] ?? "",
  //       );
  //     } else {
  //       return throw Exception();
  //     }
  //   }else {
  //      return throw Exception();
  //   }
  // }
}
