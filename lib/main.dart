import 'package:flutter/material.dart';
import 'package:t/pages/about.dart';
import 'package:t/pages/home.dart';
import 'package:t/pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: "hello world",
    themeMode: ThemeMode.dark,
    theme: ThemeData(primarySwatch: Colors.amber),
    darkTheme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      "/": (context) => LoginPage(),
      "/nav": (context) => AboutPage(),
    },
  ));
}
