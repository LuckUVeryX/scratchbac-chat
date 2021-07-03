import 'package:flash_chat/app/data/provider/firebase_provider.dart';
import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flash_chat/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(AuthRepository(FirebaseAuthProvider())));
  }
}
