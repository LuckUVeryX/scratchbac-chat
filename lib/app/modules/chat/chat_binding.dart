import 'package:flash_chat/app/data/provider/firebase_provider.dart';
import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:flash_chat/app/modules/chat/chat_controller.dart';
import 'package:get/get.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(
        () => ChatController(AuthRepository(Get.find<FirebaseAuthProvider>())));
  }
}
