import 'package:flash_chat/app/data/model/message_model.dart';
import 'package:flash_chat/app/data/provider/firebase_auth_provider.dart';
import 'package:flash_chat/app/data/provider/firestore_provider.dart';

class ChatRepository {
  ChatRepository({
    required this.firebaseAuthProvider,
    required this.firestoreProvider,
  });
  final FirebaseAuthProvider firebaseAuthProvider;
  final FirestoreProvider firestoreProvider;

  Future<void> sendText(String text) async {
    await firestoreProvider.sendText(text);
  }

  Stream<List<MessageModel>> getMessageStream() {
    return firestoreProvider.getMessageStream();
  }

  Future<void> signout() async {
    await firebaseAuthProvider.signOut();
  }
}
