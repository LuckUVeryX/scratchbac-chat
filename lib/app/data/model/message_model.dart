import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  MessageModel({
    required this.text,
    required this.displayName,
    required this.sender,
    required this.createdTime,
  });

  factory MessageModel.fromDocumentSnapshot(DocumentSnapshot event) {
    return MessageModel(
      text: event.get('text'),
      displayName: event.get('displayName'),
      sender: event.get('sender'),
      createdTime: event.get('createdTime'),
    );
  }

  String text;
  String displayName;
  String sender;
  int createdTime;
}
