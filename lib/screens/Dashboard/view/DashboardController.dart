import 'package:demo_flutter/screens/auth/view/login/data/login_response.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  static DashboardController get to => Get.find();
  final LoginResponse logInData = Get.arguments["data"];
}
