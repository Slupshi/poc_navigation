import 'package:flutter/material.dart';
import 'package:poc_navigation/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'POC Nav',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
