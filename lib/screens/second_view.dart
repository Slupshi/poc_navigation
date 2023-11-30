import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';
import 'package:poc_navigation/router.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'SecondView',
      hasTrailingButtons: true,
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("SecondView to detail"),
              onPressed: () => const SecondDetailViewRouteData().go(context),
            ),
            TextButton(
              child: const Text("SecondView to HomeView detail"),
              onPressed: () =>
                  const HomeDetailViewRouteData(id: 1234).go(context),
            ),
            TextButton(
              child: const Text("SecondView to Independent route button"),
              onPressed: () => const IndependentViewRouteData().push(context),
            ),
          ],
        ),
      ),
    );
  }
}
