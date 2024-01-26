import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/MobileScreens/chat_screen.dart';
import 'package:whatsapp_responsive_app/MobileScreens/personalchat.dart';

import 'package:whatsapp_responsive_app/utilities/colors.dart';
import 'package:whatsapp_responsive_app/data/info.dart';

class MobileViewContacts extends StatelessWidget {
  const MobileViewContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersonalChat()));
              },
              child: ListTile(
                tileColor: backgroundColor,
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString(),
                  ),
                  radius: 30,
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            const Divider(
              color: dividerColor,
              indent: 85,
              height: 1,
            ),
          ],
        );
      },
    );
  }
}
