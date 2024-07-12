import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/Discover/data/Tutor.dart';

/// @Created by akash on 12-07-2024.
/// Know more about author at https://akash.cloudemy.in
class TutorCard extends StatelessWidget {
  final Tutor tutor;

  const TutorCard({super.key, required this.tutor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(12.0),

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
                style:   TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.surfaceTint,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                tutor.subjects,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const Spacer(),
            FaIcon(
            FontAwesomeIcons.pencil,
            color: Theme.of(context).colorScheme.secondary,
            size: 30,
          ),
        ],
      ),
    );
  }
}
