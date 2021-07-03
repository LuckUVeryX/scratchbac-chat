import 'package:flash_chat/app/data/provider/firebase_auth_provider.dart';
import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flash_chat/app/modules/authentication/username/username_controller.dart';
import 'package:get/get.dart';

class UsernameBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsernameController>(() =>
        UsernameController(AuthRepository(Get.find<FirebaseAuthProvider>())));
  }
}
