
import 'package:get/get.dart';

import 'LoginController.dart';

/// @Created by akash on 12-07-2024.
/// Know more about author at https://akash.cloudemy.in

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
