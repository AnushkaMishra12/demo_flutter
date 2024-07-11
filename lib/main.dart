import 'package:demo_flutter/screens/auth/view/Dash/DashBoard.dart';
import 'package:demo_flutter/screens/auth/view/SignUp/SIgnUp.dart';
import 'package:demo_flutter/screens/auth/view/login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          // useMaterial3: true,
          ),
      debugShowCheckedModeBanner: false,
      title: 'flutter_demo',
      home: const LoginScreen(),
      routes: {
        '/dashRoutes': (context) => const DashBoard(),
        '/signUpRoutes': (context) => const SignUp(),
      },
    );
  }
}
