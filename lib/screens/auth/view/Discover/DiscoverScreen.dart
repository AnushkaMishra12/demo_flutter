import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'DiscoverController.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.put(DiscoverController()),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("Discover Tutor"),
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
            actions: <Widget>[
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.white,
                ),
                tooltip: 'Setting Icon',
                onPressed: () {},
              ), //IconButton
            ],
            //<Widget>[]
            leading: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
              ),
              tooltip: 'Menu Icon',
              onPressed: () {
                Navigator.pushNamed(context, '/dashRoutes');
              },
            ),
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          body: ListView.builder(
            itemCount: controller.tutors.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  TutorCard(tutor: controller.tutors[index]),
                  const SizedBox(height: 10), // Add spacing between cards
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class TutorCard extends StatelessWidget {
  final Tutor tutor;

  const TutorCard({super.key, required this.tutor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(tutor.image),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tutor.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                tutor.subjects,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const Spacer(),
          const FaIcon(
            FontAwesomeIcons.pencil,
            color: Colors.orange,
            size: 30,
          ),
        ],
      ),
    );
  }
}
