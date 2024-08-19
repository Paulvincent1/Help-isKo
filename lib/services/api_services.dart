import 'dart:convert';
import 'dart:developer';
import 'package:help_isko/services/global.dart';
import 'package:http/http.dart' as http;

class ApiServices{

  static Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );
    final Map<String, dynamic> responseData = jsonDecode(response.body);
    log('User data: $responseData');
    return {
      'statusCode': response.statusCode,
      'data': responseData,
    };
  }
}