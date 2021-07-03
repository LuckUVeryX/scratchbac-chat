import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/data/provider/firebase_provider.dart';
import 'package:flash_chat/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  LandingController(this.api);
  final FirebaseAuthProvider api;
  Rxn<User> user = Rxn<User>();

  @override
  void onInit() {
    user.bindStream(api.authStateChanges);
    ever(user, checkUser);
    super.onInit();
  }

  void checkUser(User? user) {
    if (user?.uid == null) {
      Get.offAllNamed(Routes.welcome);
    } else {
      Get.offAllNamed(Routes.chat);
    }
  }
}
