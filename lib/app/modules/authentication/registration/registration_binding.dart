import 'package:flash_chat/app/data/provider/firebase_auth_provider.dart';
import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flash_chat/app/modules/authentication/auth_controller.dart';
import 'package:get/get.dart';

class RegistrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
        () => AuthController(AuthRepository(Get.find<FirebaseAuthProvider>())));
  }
}
