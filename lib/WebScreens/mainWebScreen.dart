import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/WebScreens/web_chat_screen.dart';
import 'package:whatsapp_responsive_app/chats/mobile_chats.dart';
import 'package:whatsapp_responsive_app/widgets/appbar.dart';
import 'package:whatsapp_responsive_app/widgets/web_searchbar.dart';

class MainWebScreen extends StatelessWidget {
  const MainWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: const Column(
              children: [WebBar(), SearchBarWeb(), Expanded(child: Contacts())],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.65,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image.png"), fit: BoxFit.cover)),
          child: ChatPage(),
        )
      ],
    );
  }
}
