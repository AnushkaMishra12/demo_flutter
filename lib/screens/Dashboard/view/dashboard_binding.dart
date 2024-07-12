
import 'package:get/get.dart';

import 'DashboardController.dart';

/// @Created by akash on 12-07-2024.
/// Know more about author at https://akash.cloudemy.in

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }

}