import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/data/info.dart';
import 'package:whatsapp_responsive_app/widgets/my_message_card.dart';
import 'package:whatsapp_responsive_app/widgets/sender_message_card.dart';

class WebChats extends StatelessWidget {
  const WebChats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          return MyMessage(
              date: messages[index]['time'].toString(),
              message: messages[index]['text'].toString());
        } else {
          return SenderMessage(
              date: messages[index]['time'].toString(),
              message: messages[index]['text'].toString());
        }
      },
    );
  }
}
