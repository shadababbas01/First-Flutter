import 'package:flutter/material.dart';
import 'package:untitled/screens/bottom_bar.dart';
import 'package:untitled/utils/app_styles.dart';

import 'home_screen.dart';

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
      title: 'First Flutter',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: BottomBar(),
    );
  }
}
