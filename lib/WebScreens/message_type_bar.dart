import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      color: senderMessageColor,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.09,
      child: Row(
        children: [
          IconButton(
            splashRadius: 13,
            splashColor: Colors.green,
            onPressed: () {},
            icon: Icon(
              Icons.emoji_emotions,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.grey[400],
            ),
          ),
          Expanded(
            child: TextField(
              cursorColor: tabColor,
              decoration: InputDecoration(
                  prefixIconColor: tabColor,
                  focusColor: tabColor,
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  alignLabelWithHint: true,
                  hintStyle:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w100),
                  hintText: "Type a message",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  fillColor: searchBarColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none)),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mic,
                color: Colors.grey[400],
              ))
        ],
      ),
    );
  }
}
