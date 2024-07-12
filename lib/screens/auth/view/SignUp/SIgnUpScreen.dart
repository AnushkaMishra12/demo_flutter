import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
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
  }
}
