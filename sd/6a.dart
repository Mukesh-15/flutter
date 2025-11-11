// 6a 
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHome()));

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [MyText(), MyButton()],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Text("Hello Flutter!", style: TextStyle(fontSize: 24, color: Colors.blue));
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      ElevatedButton(onPressed: () {}, child: Text("Click Me"));
}
