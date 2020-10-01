import 'package:flutter/material.dart';
import 'package:community_app/homepage.dart';
import 'developers.dart';
import 'joinus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOSS COMMUNITY',
      home: HomePage(),
    );
  }
}
