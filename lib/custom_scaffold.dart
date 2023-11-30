import 'package:flutter/material.dart';
import 'package:poc_navigation/router.dart';

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
            ? GestureDetector(
                onTap: () => const IndependentViewRouteData().push(context),
                child: const CircleAvatar(
                  backgroundColor: Color(0xFFcb1d1d),
                  radius: 25,
                ),
              )
            : null,
        backgroundColor: const Color(0xFF135d5d),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        actions: hasTrailingButtons
            ? [
                const Icon(
                  Icons.newspaper,
                  color: Colors.white,
                  size: 15,
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 15,
                ),
              ]
            : [],
      ),
      body: body,
    );
  }
}
