import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'data/login_response.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  var isLoading = false.obs;
  var loginResponse = LoginResponse(token: '', email: '').obs;

  static LoginController get to => Get.find();

  Future<bool> login() async {
    isLoading(true);
    final url = Uri.parse('https://dummyjson.com/auth/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': usernameController.text,
        'password': passwordController.text,
      }),
    );

    isLoading(false);
    if (response.statusCode == 200) {
      loginResponse(LoginResponse.fromJson(jsonDecode(response.body)));
      return true; // Successful login
    } else {
      return false; // Failed login
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
