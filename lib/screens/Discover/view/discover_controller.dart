import 'package:get/get.dart';

import '../data/Tutor.dart';

class DiscoverController extends GetxController {
  static DiscoverController get to => Get.find();

  var tutors = <Tutor>[].obs;
  // RxList<Tutor> tutors=RxList([]);
  //  RxInt id=RxInt(0);
  //  var id=0.obs;
  // var dat= Tutor("","","").obs;
  // Rx<Tutor> data=Rx(Tutor("","",""));

  @override
  void onInit() {
    //  getTutors();
    super.onInit();
  }

  void getTutors() async {
    tutors.value = [
      Tutor('Anushka', 'Science ', 'assets/images/star_6570043.png'),
      Tutor('Computer', 'English ', 'assets/images/star_6570043.png'),
      Tutor('Android', 'Science + English', 'assets/images/star_6570043.png'),
    ];
  }
}
