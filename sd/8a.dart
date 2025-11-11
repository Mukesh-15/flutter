// 8a
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyAnim()));

class MyAnim extends StatefulWidget {
  @override
  State<MyAnim> createState() => _MyAnimState();
}

class _MyAnimState extends State<MyAnim> {
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: size,
              height: size,
              color: Colors.blue,
              duration: Duration(seconds: 1),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() => size = size == 100 ? 200 : 100);
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
