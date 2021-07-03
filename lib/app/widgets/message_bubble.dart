import 'package:flash_chat/app/data/model/message_model.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            message.sender,
            style: const TextStyle(fontSize: 12.0, color: Colors.black54),
          ),
          Material(
            borderRadius: BorderRadius.circular(30.0),
            elevation: 4.0,
            color: Colors.lightBlueAccent,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
