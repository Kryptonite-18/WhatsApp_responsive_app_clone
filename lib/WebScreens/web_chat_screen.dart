import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/WebScreens/message_type_bar.dart';
import 'package:whatsapp_responsive_app/chats/webchats.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //appbar
        //chats
        //searchbar
        AppBar(
          backgroundColor: backgroundColor,
          title: const Text(
            "Broo",
            style: TextStyle(fontSize: 16),
          ),
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
            ),
          ),
          actions: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.video_call),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        const Expanded(
          child: WebChats(),
        ),
        MessageField()
      ],
    );
  }
}
