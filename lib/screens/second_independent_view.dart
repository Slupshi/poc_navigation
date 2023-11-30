import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';

class SecondIndependentView extends StatelessWidget {
  const SecondIndependentView({
    required this.id,
    super.key,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "SecondIndependentView",
      background: const Color(0xFFB8FFBA),
      body: Center(
        child: Text("Not nested route with param : $id"),
      ),
    );
  }
}
