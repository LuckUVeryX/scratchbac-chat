import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/app/data/model/message_model.dart';
import 'package:flash_chat/app/data/provider/firebase_auth_provider.dart';
import 'package:get/get.dart';

class FirestoreProvider extends GetxService {
  final _firestore = FirebaseFirestore.instance;
  final _firebaseAuth = Get.find<FirebaseAuthProvider>();

  Future<void> sendText(String text) async {
    await _firestore.collection('messages').add({
      'text': text,
      'sender': _firebaseAuth.getCurrentUser()?.email,
    });
  }

  Stream<List<MessageModel>> getMessageStream() {
    Stream<QuerySnapshot> stream =
        _firestore.collection('messages').snapshots();

    return stream.map((event) =>
        event.docs.map((e) => MessageModel.fromDocumentSnapshot(e)).toList());
  }
}
