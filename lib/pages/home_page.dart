// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:formapp/routes/app_routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.login);
                    },
                    child: const Text("To Login"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.signUp);
                    },
                    child: const Text("To Signup"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
