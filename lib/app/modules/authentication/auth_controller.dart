import 'package:firebase_auth/firebase_auth.dart';
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
    try {
      await repository.createUser(
        emailController.text.trim(),
        passwordController.text,
      );
      emailController.clear();
      passwordController.clear();
    } on FirebaseAuthException catch (e) {
      Get.snackbar(e.code, e.message ?? '');
      debugPrint('Error creating user: ${e.toString()}');
    } finally {
      updateSpinner(false);
    }
  }

  Future<void> signInUser() async {
    updateSpinner(true);
    try {
      await repository.signInUser(
        emailController.text.trim(),
        passwordController.text,
      );
      emailController.clear();
      passwordController.clear();
    } on FirebaseAuthException catch (e) {
      Get.snackbar(e.code, e.message ?? '');
      debugPrint('Error signing in user: ${e.toString()}');
    } finally {
      updateSpinner(false);
    }
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
