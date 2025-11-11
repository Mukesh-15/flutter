//3b
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: ResponsiveUI()));
class ResponsiveUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    String layout = w < 600 ? "Mobile" : w < 1200 ? "Tablet" : "Desktop";
    Color color = w < 600 ? Colors.yellowAccent : Colors.blueAccent;
    return Scaffold(
      appBar: AppBar(title: Text(layout + "Layout")),
      body: Center(
        child: Container(
          width: w * 0.8,
          height: 150,
          color: color,
          child: Center(child: Text(layout + "Layout")),
        ),
      ),
    );
  }
}