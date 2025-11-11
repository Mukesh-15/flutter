// 6b
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text("Theme Example")),
        body: Center(
          child: ElevatedButton(
            onPressed: () => setState(() => isDark = !isDark),
            child: Text(isDark ? "Switch to Light" : "Switch to Dark"),
          ),
        ),
      ),
    );
  }
}