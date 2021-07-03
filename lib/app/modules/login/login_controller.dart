import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController(this.repository);
  final AuthRepository repository;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signInUser() async {
    await repository.signInUser(emailController.text, passwordController.text);
    emailController.clear();
    passwordController.clear();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
