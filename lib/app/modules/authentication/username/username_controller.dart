import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flash_chat/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsernameController extends GetxController {
  UsernameController(this.repository);
  final AuthRepository repository;
  final usernameEditingController = TextEditingController();
  bool showSpinner = false;

  void updateDisplayName() async {
    updateSpinner(true);
    try {
      await repository.updateDisplayName(usernameEditingController.text);
      Get.offAllNamed(Routes.chat);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(e.code, e.message ?? '');
      debugPrint('Update display name: ${e.toString()}');
    } finally {
      updateSpinner(false);
    }
  }

  void updateSpinner(bool value) {
    showSpinner = value;
    update();
  }
}
