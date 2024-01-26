import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class SenderMessage extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessage({super.key, required this.date, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                child: Text(message),
                padding:
                    EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.done_all,
                      size: 14,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
