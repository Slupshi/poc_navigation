import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';
import 'package:poc_navigation/router.dart';

class IndependentView extends StatelessWidget {
  const IndependentView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "IndependentView",
      background: const Color(0xFFB8FFBA),
      body: Center(
        child: Column(
          children: [
            const Text("Not nested route"),
            TextButton(
              child:
                  const Text("Independent to SecondIndependent route button"),
              onPressed: () =>
                  const SecondIndependentViewRouteData(id: 987).push(context),
            ),
          ],
        ),
      ),
    );
  }
}
