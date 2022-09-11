import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:future_jobs/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:future_jobs/helper/Constant.dart';

class AuthProvider with ChangeNotifier {
  final String BASE_URL = "https://bwa-jobs.herokuapp.com";

  //registrasi
  Future<UserModel?> register(
    String email,
    String password,
    String name,
    String goal,
  ) async {
    try {
      //disesuakan dg body
      var body = {
        'email': email,
        'password': password,
        'name': name,
        'goal': goal
      };
      print(body);
      var response = await http.post(
        Uri.parse('${Contant().BASE_URL}/register'),
        body: body,
      );

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  //login
  Future<UserModel?> login(
    String email,
    String password,
  ) async {
    try {
      //disesuakan dg body
      var body = {
        'email': email,
        'password': password,
      };
      print(body);
      var response = await http.post(
        Uri.parse('${Contant().BASE_URL}/login'),
        body: body,
      );

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
