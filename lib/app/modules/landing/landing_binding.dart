import 'package:flash_chat/app/data/provider/firebase_auth_provider.dart';
import 'package:flash_chat/app/modules/landing/landing_controller.dart';
import 'package:get/get.dart';

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirebaseAuthProvider());
    Get.lazyPut<LandingController>(
        () => LandingController(Get.find<FirebaseAuthProvider>()));
  }
}
