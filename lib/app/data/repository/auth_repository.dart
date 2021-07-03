import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/data/provider/firebase_provider.dart';

class AuthRepository {
  AuthRepository(this.provider);
  final FirebaseAuthProvider provider;

  User? get user => provider.getCurrentUser();

  Future<UserCredential?> createUser(String email, String password) async {
    return await provider.createUser(email, password);
  }

  Future<UserCredential?> signInUser(String email, String password) async {
    return await provider.signInUser(email, password);
  }

  Future<void> signout() async {
    await provider.signOut();
  }
}
