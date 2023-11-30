import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';
import 'package:poc_navigation/router.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({
    required this.id,
    super.key,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Home detail',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Home details n°$id"),
            TextButton(
              child: const Text("HomeDetail to Independent route button"),
              onPressed: () => const IndependentViewRouteData().push(context),
            ),
          ],
        ),
      ),
    );
  }
}
