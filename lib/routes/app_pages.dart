// ignore_for_file: depend_on_referenced_packages

import 'package:formapp/pages/home_page.dart';
import 'package:formapp/pages/login_page.dart';
import 'package:formapp/pages/signup_page.dart';
import 'package:formapp/routes/app_routes.dart';
import 'package:get/get.dart';

// Class containing links between Pages and route names

class AppPages {
  static const initial = Routes.home;

  final getPages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpage(),
      transition: Transition.fadeIn,
    ),
  ];
}
