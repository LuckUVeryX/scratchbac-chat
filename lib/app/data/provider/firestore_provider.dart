import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/data/model/message_model.dart';
import 'package:flash_chat/app/data/provider/firebase_auth_provider.dart';
import 'package:get/get.dart';

class FirestoreProvider extends GetxService {
  final _firestore = FirebaseFirestore.instance;
  final _firebaseAuth = Get.find<FirebaseAuthProvider>();

  Future<void> sendText(String text) async {
    User? user = _firebaseAuth.getCurrentUser();
    await _firestore.collection('messages').add({
      'text': text,
      'displayName': user?.displayName,
      'sender': user?.email,
      'createdTime': DateTime.now().millisecondsSinceEpoch,
    });
  }

  Stream<List<MessageModel>> getMessageStream() {
    Stream<QuerySnapshot> stream = _firestore
        .collection('messages')
        .orderBy('createdTime', descending: true)
        .snapshots();

    return stream.map((event) =>
        event.docs.map((e) => MessageModel.fromDocumentSnapshot(e)).toList());
  }
}
