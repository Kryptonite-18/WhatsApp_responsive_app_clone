import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';

class SearchBarWeb extends StatelessWidget {
  const SearchBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      child: TextField(
        cursorColor: tabColor,
        decoration: InputDecoration(
            focusColor: tabColor,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            floatingLabelAlignment: FloatingLabelAlignment.center,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            alignLabelWithHint: true,
            hintStyle:
                const TextStyle(fontSize: 13, fontWeight: FontWeight.w100),
            hintText: "Search or start a new chat",
            prefixIconColor: tabColor,
            prefixIcon: const Icon(
              Icons.search,
              size: 20,
            ),
            fillColor: searchBarColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
