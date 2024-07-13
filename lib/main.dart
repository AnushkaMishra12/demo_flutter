import 'package:demo_flutter/routes/AppPages.dart';
import 'package:demo_flutter/screens/auth/view/login/view/LoginScreen.dart';
import 'package:demo_flutter/screens/auth/view/login/view/login_binding.dart';
import 'package:demo_flutter/theme/ThemeColor.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const LoginScreen(),
      initialBinding: LoginBinding(),
      getPages: AppPages.pages,
    );
  }
}
