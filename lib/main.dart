import 'package:flutter/material.dart';
import 'package:flutter_ui_box/login_page/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ui Box',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LoginScreen()
    );
  }
}

