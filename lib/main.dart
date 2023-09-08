import 'package:flutter/material.dart';
import 'package:hngx_project1/screens/home_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hngx internship first project',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const HomeScreen(),
    );
  }
}


