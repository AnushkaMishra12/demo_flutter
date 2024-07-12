
import 'package:get/get.dart';

import 'discover_controller.dart';



/// @Created by akash on 12-07-2024.
/// Know more about author at https://akash.cloudemy.in

class DiscoverBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoverController());
  }

}