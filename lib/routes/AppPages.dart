import 'package:demo_flutter/screens/Discover/view/DiscoverScreen.dart';
import 'package:demo_flutter/screens/Discover/view/discover_binding.dart';
import 'package:demo_flutter/screens/auth/view/SignUp/SIgnUpScreen.dart';
import 'package:demo_flutter/screens/auth/view/SignUp/signup_binding.dart';
import 'package:demo_flutter/screens/auth/view/login/LoginScreen.dart';
import 'package:demo_flutter/screens/auth/view/login/login_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/Dashboard/view/DashBoardScreen.dart';
import '../screens/Dashboard/view/dashboard_binding.dart';
import 'AppRoutes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.discover,
      page: () => const DiscoverScreen(),
      binding: DiscoverBinding(),
    ),
  ];
}
