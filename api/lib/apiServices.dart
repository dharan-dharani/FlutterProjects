import 'dart:convert';
import 'package:api/userDetails.dart';
import 'package:http/http.dart' as http;

class ApiServices {

  static Future<List<UserDetails>>apiconnection() async {
    final response = await http.get(
        Uri.parse('https://randomuser.me/api/?results=100'));
    final body = response.body;
    final json = jsonDecode(body);
    final result = json['results'] as List<dynamic>;
    final Users = result.map((user) {
      return UserDetails(email: user['email'],
          phone: user['phone'],
          gender: user['gender']);
    }).toList();
    return Users;
  }
}