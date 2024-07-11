import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SignUpController.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      init: Get.put(SignUpController()),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Container(
              width: 200,
              height: 100,
              color: Colors.greenAccent,
              child: const Center(
                  child: Text(
                'Hello Developers !!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
          //
          // body: Center(
          //   child: TextButton(
          //     child: const Text('Text Button'),
          //     onPressed: () {
          //       print('Text Button pressed');
          //     },
          //     onLongPress: () {
          //       print('Long Pressed');
          //     },
          //   ),
          // ),
          // body: Center(
          //   child: ElevatedButton(
          //     child: const Text('Elevated Button'),
          //     onPressed: () {},
          //   ),
          // ),
        );
      },
    );
  }
}
