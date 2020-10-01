import 'package:flutter/material.dart';
import 'package:community_app/Layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FOSS COMMUNITY',
        home: DefaultTabController(
          length: 3,
          child: Layout(),
        ));
  }
}
