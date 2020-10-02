import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        title: Text("KIIT FOSS Community"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            color: Colors.green[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
                Text(
                  "<<<Work at progress>>>",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
