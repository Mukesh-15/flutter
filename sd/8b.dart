// 8b
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyAnim()));

class MyAnim extends StatefulWidget {
  @override
  State<MyAnim> createState() => _MyAnimState();
}

class _MyAnimState extends State<MyAnim> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fade & Slide")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: change ? 0.2 : 1.0,
              duration: Duration(seconds: 1),
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            SizedBox(height: 20),
            AnimatedContainer(
              width: 100,
              height: 100,
              color: Colors.green,
              duration: Duration(seconds: 1),
              margin: EdgeInsets.only(left: change ? 100 : 0),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => change = !change),
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
