import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  //named Constructor --> private
  MyApp.internal();

  static final MyApp _instance = MyApp.internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
