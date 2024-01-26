import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class StoryUpadtes extends StatelessWidget {
  final String url;
  final String name;
  final String time;
  const StoryUpadtes(
      {super.key, required this.name, required this.time, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: ListTile(
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
        subtitle: Text("${time}"),
      ),
    );
  }
}
