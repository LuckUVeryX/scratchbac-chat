import 'package:flash_chat/app/data/repository/auth_repository.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  ChatController(this.repository);

  final AuthRepository repository;

  void signOut() async {
    await repository.signout();
  }
}
