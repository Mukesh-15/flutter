//5a
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: Counter()));
}
class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => CounterState();
}
class CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: " +count, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {count++;});
              },
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}