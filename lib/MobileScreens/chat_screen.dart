import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/chats/mobile_chats.dart';
import 'package:whatsapp_responsive_app/chats/mobile_view_chats.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 3,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: Icon(
              Icons.system_update_tv_sharp,
              size: 18,
              color: Colors.grey[400],
            ),
            title: Text("Archieved"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Expanded(child: MobileViewContacts())
      ],
    );
  }
}
