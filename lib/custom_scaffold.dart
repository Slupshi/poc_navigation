import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.title,
    required this.body,
    this.hasLeadingAvatar = false,
    this.hasTrailingButtons = false,
    this.background,
  });

  final Widget body;
  final String title;
  final bool hasLeadingAvatar;
  final bool hasTrailingButtons;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        leading: hasLeadingAvatar
            ? Container(
                color: Colors.blue,
                height: 30,
                width: 30,
              )
            : null,
        backgroundColor: Colors.red,
        title: Text(title),
        actions: hasTrailingButtons
            ? [
                Container(
                  color: Colors.yellow,
                  height: 15,
                  width: 15,
                ),
                const SizedBox(width: 10),
                Container(
                  color: Colors.yellow,
                  height: 15,
                  width: 15,
                ),
              ]
            : [],
      ),
      body: body,
    );
  }
}
