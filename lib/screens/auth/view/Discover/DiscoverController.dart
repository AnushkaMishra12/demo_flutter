import 'package:get/get.dart';

class DiscoverController extends GetxController {
  final List<Tutor> tutors = [
    Tutor('Anushka', 'Science + Mathematics', 'assets/images/star_6570043.png'),
    Tutor('Computer', 'English + Math', 'assets/images/star_6570043.png'),
    Tutor('Android', 'Science + English', 'assets/images/star_6570043.png'),
  ];
}

class Tutor {
  final String name;
  final String subjects;
  final String image;

  Tutor(this.name, this.subjects, this.image);
}
