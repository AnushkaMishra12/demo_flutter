import 'package:demo_flutter/screens/auth/view/login/LoginController.dart';
import 'package:get/get.dart';

/// @Created by akash on 12-07-2024.
/// Know more about author at https://akash.cloudemy.in

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
