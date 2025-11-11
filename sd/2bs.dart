//2bs
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: StackExample));
class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Stack Example')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 150, height: 150, color: Colors.orange),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 50, height: 50, color: Colors.blue),
            ],
          ),
        ),
    );
  }
}
