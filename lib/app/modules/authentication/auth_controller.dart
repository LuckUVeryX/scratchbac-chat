import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController(this.repository);
  final AuthRepository repository;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSpinner = false;

  Future<void> registerUser() async {
    updateSpinner(true);
    await repository.createUser(emailController.text, passwordController.text);
    emailController.clear();
    passwordController.clear();
    updateSpinner(false);
  }

  Future<void> signInUser() async {
    await repository.signInUser(emailController.text, passwordController.text);
    emailController.clear();
    passwordController.clear();
  }

  void updateSpinner(bool value) {
    showSpinner = value;
    update();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
