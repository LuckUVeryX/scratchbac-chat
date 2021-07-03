import 'package:flash_chat/app/modules/login/login_controller.dart';
import 'package:flash_chat/app/widgets/logo.dart';
import 'package:flash_chat/app/widgets/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const LogoWidget(),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              controller: controller.passwordController,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Log In',
              color: Colors.lightBlueAccent,
              onPressed: () {
                controller.signInUser();
              },
            ),
          ],
        ),
      ),
    );
  }
}
