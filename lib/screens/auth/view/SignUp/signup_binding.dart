import 'package:demo_flutter/screens/auth/view/SignUp/SignUpController.dart';
import 'package:get/get.dart';

/// @Created by akash on 12-07-2024.
/// Know more about author at https://akash.cloudemy.in

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
