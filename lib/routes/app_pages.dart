// ignore_for_file: depend_on_referenced_packages

import 'package:formapp/pages/login_page.dart';
import 'package:formapp/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const LoginPage(),
    ),
  ];
}
