import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';
import 'package:whatsapp_responsive_app/data/info.dart';
import 'package:whatsapp_responsive_app/widgets/updates_widget.dart';

class MobileUpdateScreen extends StatelessWidget {
  const MobileUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            ),
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 31,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                        color: tabColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
            title: Text("My status"),
            subtitle: Text('Tap to add status updates'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Recent upadtes',
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
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
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
            title: const Text(
              "Channels",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Stay updated on topics that matter to you. Tap on the + to create your channel",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 9),
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tabColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: const Text(
                    "Explore more",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  )))
        ],
      ),
    );
  }
}
