import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  RegistrationController(this.repository);
  final AuthRepository repository;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> registerUser() async {
    await repository.createUser(emailController.text, passwordController.text);
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
