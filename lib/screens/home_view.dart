import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';
import 'package:poc_navigation/router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'HomeView',
      hasLeadingAvatar: true,
      body: Center(
        child: TextButton(
          child: const Text("Home to detail route button v1.5 bis"),
          onPressed: () => const HomeDetailViewRouteData(id: 456).go(context),
        ),
      ),
    );
  }
}
