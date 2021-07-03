import 'package:flash_chat/app/data/model/message_model.dart';
import 'package:flash_chat/app/data/repository/chat_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  ChatController(this.repository);
  final ChatRepository repository;
  final textController = TextEditingController();
  final messages = <MessageModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    messages.bindStream(getMessageStream());
  }

  void sendText() async {
    await repository.sendText(textController.text);
  }

  Stream<List<MessageModel>> getMessageStream() {
    return repository.getMessageStream();
  }

  void signOut() async {
    await repository.signout();
  }
}
