import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/data/model/message_model.dart';
import 'package:flash_chat/app/data/repository/chat_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  ChatController(this.repository);
  final ChatRepository repository;
  final textController = TextEditingController();
  final RxList<MessageModel> messages = <MessageModel>[].obs;
  late final String? userEmail;

  @override
  void onInit() {
    super.onInit();
    messages.bindStream(getMessageStream());
    userEmail = repository.getUser()?.email;
  }

  void sendText() async {
    await repository.sendText(textController.text);
    textController.clear();
  }

  Stream<List<MessageModel>> getMessageStream() {
    return repository.getMessageStream();
  }

  void signOut() async {
    try {
      await repository.signout();
    } on FirebaseAuthException catch (e) {
      Get.snackbar(e.code, e.message ?? '');
      debugPrint('Error signing out: ${e.toString()}');
    }
  }
}
