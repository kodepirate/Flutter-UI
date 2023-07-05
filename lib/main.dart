import 'package:flutter/material.dart';
import 'package:orderfood/m2.dart';

void main() {
  runApp(MyApp());

  // scrollDirection: Axis.horizontal;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: M2(),
    );
  }
}
