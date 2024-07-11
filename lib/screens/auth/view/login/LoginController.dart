import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  var dataList = <String>["abc", "abc 2", "abc 3"];
  static LoginController get to => Get.find();
  Future<bool> login() async {
    await Future.delayed(
        const Duration(seconds: 2)); // Simulating network delay
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == 'user' && password == 'password') {
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
