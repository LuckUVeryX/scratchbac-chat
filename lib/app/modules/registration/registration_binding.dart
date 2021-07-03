import 'package:flash_chat/app/data/provider/firebase_provider.dart';
import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flash_chat/app/modules/registration/registration_controller.dart';
import 'package:get/get.dart';

class RegistrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationController>(
        () => RegistrationController(AuthRepository(FirebaseAuthProvider())));
  }
}
