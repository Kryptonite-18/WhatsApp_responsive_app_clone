import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class CallWidgets extends StatelessWidget {
  final String url;
  final String name;
  final String time;
  const CallWidgets(
      {super.key, required this.name, required this.time, required this.url});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundColor: tabColor,
        child: InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: () {},
            child:
                CircleAvatar(backgroundImage: NetworkImage(url), radius: 22)),
      ),
      title: Text("${name}"),
      subtitle: Row(
        children: [
          Icon(
            Icons.arrow_outward_outlined,
            color: tabColor,
          ),
          Text("${time}"),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.call,
          color: tabColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
