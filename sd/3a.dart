w//3a
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Responsive UI')),
        body: LayoutBuilder(
          builder: (context, constraints) {
            // Check screen width
            if (constraints.maxWidth < 600) {
              // Mobile layout
              return Column(
                children: [
                  buildBox(Colors.red, 'Box 1'),
                  buildBox(Colors.green, 'Box 2'),
                ],
              );
            } else {
              // Tablet/Desktop layout
              return Row(
                children: [
                  buildBox(Colors.red, 'Box 1'),
                  buildBox(Colors.green, 'Box 2'),
                ],
              );
            }
          },
        ),
      ),
    );
  }
  Widget buildBox(Color color, String text) {
    return Expanded(
      child: Container(
        color: color,
        child: Center(
          child: Text(text, style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
      ),
    );
  }
}