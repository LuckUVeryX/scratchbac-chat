import 'package:flash_chat/app/data/provider/firebase_auth_provider.dart';
import 'package:flash_chat/app/data/provider/firestore_provider.dart';
import 'package:flash_chat/app/data/repository/chat_repository.dart';
import 'package:flash_chat/app/modules/chat/chat_controller.dart';
import 'package:get/get.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirestoreProvider>(() => FirestoreProvider());
    Get.lazyPut<ChatController>(() => ChatController(ChatRepository(
        firebaseAuthProvider: Get.find<FirebaseAuthProvider>(),
        firestoreProvider: Get.find<FirestoreProvider>())));
  }
}
