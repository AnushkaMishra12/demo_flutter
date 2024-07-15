import 'package:demo_flutter/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../../Dashboard/view/DashBoardScreen.dart';
import '../../../data/AuthRepo.dart';
import '../data/login_response.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  final repo = AuthRepo();
  var isLoading = false.obs;
  var loginResponse = LoginResponse(token: '', email: '').obs;

  static LoginController get to => Get.find();

  void login() {
    isLoading(true);
    repo.login(
        jsonEncode({
          'username': usernameController.text,
          'password': passwordController.text,
        }), (data, error) {
      isLoading(false);
      if (data != null) {
        Get.offAndToNamed(AppRoutes.dashboard,
            arguments: {"data": data, "id": 0});
      } else {
        Get.snackbar(
          "Login Failed",
          error ?? "Unknown error",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    });
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
