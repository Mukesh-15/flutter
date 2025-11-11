//2br
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: RowExample()));
class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Row Example')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              box('One', Colors.blue),
              SizedBox(width: 10),
              box('Two', Colors.green),
              SizedBox(width: 10),
              box('Three', Colors.orange),
            ],
          ),
        ),
    );
  }

  Widget box(String text, Color color) => Container(
        padding: EdgeInsets.all(20),
        color: color,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      );
}
