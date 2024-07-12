import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../routes/AppRoutes.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Learning"),
        actions: <Widget>[
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.bars),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.bell),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        //<Widget>[]
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.arrowLeft),
          tooltip: 'Menu Icon',
          onPressed: () {
            Get.toNamed(AppRoutes.login);
          },
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryFixed,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    IconButton(
                      icon:   FaIcon(FontAwesomeIcons.search,color: Theme.of(context).colorScheme.onSecondaryFixed,),
                      onPressed: () {},
                    ),
                      Text(
                      'Finding Tutor',
                      style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.onSecondaryFixed),
                    ),
                  ],
                )),
            Container(
              height: 180,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: const EdgeInsets.all(10),
                child:   Text(
                  'What do you want to \nlearn Today ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 18),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              // height: double.maxFinite,we don't assign height to take wrap content like height
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(
                      'Looking Tutor For ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 18),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(8)),
                      child:   Text(
                        'Please Enter Subject',
                        style:
                        TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(8)),
                      child:   Text(
                        'Please Enter Subject',
                        style:
                        TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(8)),
                      child:   Text(
                        'Please Enter Subject',
                        style:
                        TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(8)),
                      child:   Text(
                        'Please Enter Subject',
                        style:
                        TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.orange),
                      child: TextButton(
                        child: const Center(
                          child: Text(
                            'Raised Button',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(AppRoutes.discover);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
