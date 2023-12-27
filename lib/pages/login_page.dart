import 'package:flutter/material.dart';
import 'package:formapp/pages/signup_page.dart';
import 'package:formapp/widgets/custom_Text.dart';
import 'package:formapp/widgets/custom_button.dart';
import 'package:formapp/widgets/custom_textbutton.dart';
import 'package:formapp/widgets/input_field.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: Colors.blueAccent,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                  const Text(
                    "Login Page",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(children: [
                          CustomText(
                              customText: "Email",
                              textColor: Colors.white,
                              textSize: 18),
                        ]),
                        InputFields(
                          textFieldLabel: "email",
                          textObscure: false,
                          prefixIcon: const Icon(Icons.email),
                          textFieldController: emailController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CustomText(
                                customText: "Password",
                                textColor: Colors.white,
                                textSize: 18),
                          ],
                        ),
                        InputFields(
                          textFieldLabel: "Password",
                          textObscure: true,
                          prefixIcon: const Icon(Icons.lock),
                          textFieldController: passwordController,
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          buttonName: "Login",
                          callback: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              customText: "Don't have an account?",
                              textColor: Colors.white,
                              textSize: 11,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: CustomTextButton(
                                buttonText: 'click here to sign up',
                                callback: () {
                                  Get.to(const SignUpage());
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
