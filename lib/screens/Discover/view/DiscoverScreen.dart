import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../routes/AppRoutes.dart';
import '../../../widgets/TutorCard.dart';
import 'discover_controller.dart';



class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Discover Tutor"),
        actions: <Widget>[
          IconButton(
            icon:   const FaIcon(
              FontAwesomeIcons.bell,
            ),
            tooltip: 'Setting Icon',
            onPressed: () {
              DiscoverController.to.getTutors();
            },
          ), //IconButton
        ],
        //<Widget>[]
        leading: IconButton(
          icon:   const FaIcon(
            FontAwesomeIcons.arrowLeft,
          ),
          tooltip: 'Back Icon',
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Obx(() => ListView.builder(
          itemCount: DiscoverController.to.tutors.length,
          itemBuilder: (context, index) {
            return TutorCard(tutor: DiscoverController.to.tutors[index]);
          },
        ),
      ),
    );
  }
}

