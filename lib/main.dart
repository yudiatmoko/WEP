import 'package:flutter/material.dart';
import 'cover.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 156, 188, 89),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Noto',
      ),
      home: Cover(),
    );
  }
}