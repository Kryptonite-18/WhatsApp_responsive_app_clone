import 'package:flutter/material.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp(
      {super.key, required this.mobileView, required this.webView});
  final Widget mobileView;
  final Widget webView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobileView;
        } else {
          return webView;
        }
      },
    );
  }
}
