import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  MessageModel({
    required this.sender,
    required this.text,
    required this.createdTime,
  });

  factory MessageModel.fromDocumentSnapshot(DocumentSnapshot event) {
    return MessageModel(
      sender: event.get('sender'),
      text: event.get('text'),
      createdTime: event.get('createdTime'),
    );
  }

  String sender;
  String text;
  int createdTime;
}
