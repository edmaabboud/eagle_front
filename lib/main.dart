import 'package:eagle/homepage.dart';
import 'package:eagle/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.amber,
        appBarTheme: AppBarTheme(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
    ),
        ),
        ),
      home: HomePageScreen(),
    );
  }
}