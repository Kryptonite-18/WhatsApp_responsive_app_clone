import 'package:flutter/material.dart';

import 'package:whatsapp_responsive_app/data/info.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

import 'package:whatsapp_responsive_app/widgets/updates_widget.dart';

class WebStatusScreen extends StatelessWidget {
  const WebStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: backgroundColor,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    clipBehavior: Clip.none,
                    color: searchBarColor,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Row(
                      children: [
                        IconButton(
                            splashRadius: 10,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_rounded)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "STATUS",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: const ListTile(
                      leading: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0'),
                          ),
                        ],
                      ),
                      title: Text(
                        "My status",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w100),
                      ),
                      subtitle: Text(
                        'No updates',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.bottomLeft,
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: Text(
                      "RECENT",
                      style: TextStyle(color: tabColor),
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.60,
                      child: ListView.builder(
                        itemCount: info.length,
                        itemBuilder: (context, index) {
                          return StoryUpadtes(
                              name: info[index]['name'].toString(),
                              time: info[index]['time'].toString(),
                              url: info[index]['profilePic'].toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image.png"), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
