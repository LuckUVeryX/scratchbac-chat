import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  MessageModel({this.sender, this.text});

  factory MessageModel.fromDocumentSnapshot(DocumentSnapshot event) {
    return MessageModel(
      sender: event.get('sender'),
      text: event.get('text'),
    );
  }

  String? sender;
  String? text;
}
