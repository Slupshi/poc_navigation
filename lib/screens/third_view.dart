import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';
import 'package:poc_navigation/router.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'ThirdView',
      hasTrailingButtons: true,
      hasLeadingAvatar: true,
      body: Center(
        child: TextButton(
          child: const Text("ThirdView to HomeView button"),
          onPressed: () => const HomeViewRouteData().go(context),
        ),
      ),
    );
  }
}
