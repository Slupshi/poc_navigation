import 'package:flutter/material.dart';
import 'package:poc_navigation/custom_scaffold.dart';

class SecondDetailView extends StatelessWidget {
  const SecondDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'SecondView detail',
      body: Center(
        child: Text("SecondView detail"),
      ),
    );
  }
}
