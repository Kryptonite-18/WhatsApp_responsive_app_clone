import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/WebScreens/web_status_ecreen.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class WebBar extends StatelessWidget {
  const WebBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      color: searchBarColor,
      width: 600,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0'),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.people_outline,
                  color: Colors.grey[400],
                ),
                color: Colors.grey[400],
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebStatusScreen()),
                  );
                },
                icon: Icon(Icons.circle),
                color: Colors.grey[400],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.change_circle_rounded),
                color: Colors.grey[400],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
                color: Colors.grey[400],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.grey[400],
              ),
            ],
          )
        ],
      ),
    );
  }
}
