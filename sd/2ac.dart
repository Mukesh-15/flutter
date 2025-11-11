//2ac
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Container Example')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(40),   // Inner spacing
            margin: EdgeInsets.all(40),    // Outer spacing
            color: Colors.blue,
            child: Text('Hello!',style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
        ),
    );
  }
}
