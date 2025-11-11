// 10b
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: DebugExample()));

class DebugExample extends StatefulWidget {
  @override
  State<DebugExample> createState() => _DebugExampleState();
}

class _DebugExampleState extends State<DebugExample> {
  String message = "No message yet";

  void showMessage() {
    setState(() => message = "Hello Debugger!");
    debugPrint("Message updated: $message"); // Debug log
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Building widget... current message: $message");
    return Scaffold(
      appBar: AppBar(title: Text("Debug Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: showMessage, child: Text("Show Message")),
          ],
        ),
      ),
    );
  }
}