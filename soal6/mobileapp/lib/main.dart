import 'package:flutter/material.dart';
import 'package:mobileapp/bottomnavbar.dart';
import 'package:mobileapp/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
