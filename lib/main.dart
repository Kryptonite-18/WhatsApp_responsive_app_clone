import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_app/MobileScreens/MobileView.dart';
import 'package:whatsapp_responsive_app/Responsive/responsive.dart';
import 'package:whatsapp_responsive_app/utilities/colors.dart';
import 'package:whatsapp_responsive_app/WebScreens/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark(background: backgroundColor)),
      home: ResponsiveApp(
        mobileView: MobileView(),
        webView: WebView(),
      ),
    );
  }
}
