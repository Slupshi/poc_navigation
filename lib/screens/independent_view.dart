import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';

class IndependentView extends StatelessWidget {
  const IndependentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: "IndependentView",
      background: Color(0xFFB8FFBA),
      body: Center(
        child: Text("Not nested route"),
      ),
    );
  }
}
