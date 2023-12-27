import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpage extends StatefulWidget {
  const SignUpage({super.key});

  @override
  State<SignUpage> createState() => _SignUpageState();
}

class _SignUpageState extends State<SignUpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back'),
            ),
          ),
        ),
      ),
    );
  }
}
