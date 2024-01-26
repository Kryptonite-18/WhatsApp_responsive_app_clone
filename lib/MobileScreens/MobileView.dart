import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/MobileScreens/calls_screen.dart';
import 'package:whatsapp_responsive_app/MobileScreens/chat_screen.dart';
import 'package:whatsapp_responsive_app/MobileScreens/upadates_screen.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class MobileView extends StatefulWidget {
  MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.message;
    Widget activeScreen = MobileChatScreen();
    if (currentIndex == 2) {
      setState(() {
        icon = Icons.camera_alt_rounded;
        activeScreen = MobileUpdateScreen();
      });
    }
    if (currentIndex == 3) {
      setState(() {
        icon = Icons.add_ic_call_rounded;
        activeScreen = CallsScreen();
      });
    }
    return DefaultTabController(
      initialIndex: currentIndex,
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, backgroundColor: tabColor, child: Icon(icon)),
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            Row(
              children: [
                IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined)),
                IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.search)),
                IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
          bottom: TabBar(
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              tabs: const [
                Tab(
                  icon: Icon(Icons.people),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Updates",
                ),
                Tab(
                  text: "Calls",
                )
              ]),
        ),
        body: activeScreen,
      ),
    );
  }
}
