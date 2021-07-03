import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class FirebaseAuthProvider {
  final _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<UserCredential?> createUser(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error creating user', e.toString());
      debugPrint('Error creating user: ${e.toString()}');
    }
  }

  Future signInUser(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error signing in', e.toString());
      debugPrint('Error signing in: ${e.toString()}');
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error signing out', e.toString());
      debugPrint('Error signing out: ${e.toString()}');
    }
  }

  User? getCurrentUser() {
    User? user;
    try {
      user = _auth.currentUser;
    } catch (e) {
      debugPrint('Get current user error: ${e.toString()}');
    }
    return user;
  }
}
