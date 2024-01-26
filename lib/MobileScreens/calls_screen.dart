import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';
import 'package:whatsapp_responsive_app/data/info.dart';
import 'package:whatsapp_responsive_app/widgets/call_widgets.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: tabColor, borderRadius: BorderRadius.circular(40)),
              child: const Icon(
                Icons.link,
                color: Colors.black,
              ),
            ),
            title: Text("Create call link"),
            subtitle: const Text(
              'Share a link for your WhatsApp call',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w100),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Align(alignment: Alignment.bottomLeft, child: Text("Recent")),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              return CallWidgets(
                  name: info[index]['name'].toString(),
                  time: info[index]['last_called'].toString(),
                  url: info[index]['profilePic'].toString());
            },
          ),
        )
      ],
    );
  }
}
