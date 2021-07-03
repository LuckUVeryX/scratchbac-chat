import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class FirebaseAuthProvider extends GetxService {
  final _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<UserCredential?> createUser(String email, String password) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future signInUser(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> updateDisplayName(String displayName) async {
    final User? user = getCurrentUser();
    await user?.updateDisplayName(displayName);
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
