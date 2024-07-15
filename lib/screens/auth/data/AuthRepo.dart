import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../view/login/data/login_response.dart';

class AuthRepo {
  void login(
      Object req, Function(LoginResponse?, String? error) callback) async {
    final url = Uri.parse('https://dummyjson.com/auth/login');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: req,
      );

      debugPrint("====================> ${response.toString()}");
      if (response.statusCode == 200) {
        callback.call(LoginResponse.fromJson(jsonDecode(response.body)), null);
        // Successful login
      } else {
        callback(null, response.reasonPhrase); // Failed login
      }
    } catch (e) {
      e.printError();
      callback(null, e.toString());
    }
  }
}
