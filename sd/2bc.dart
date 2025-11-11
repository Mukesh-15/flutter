//2bc
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: ColumnExample()));
class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Column Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              box('Top', Colors.red),
              SizedBox(height: 10),
              box('Middle', Colors.green),
              SizedBox(height: 10),
              box('Bottom', Colors.blue),
            ],
          ),
        ),
    );
  }

  Widget box(String text, Color color){
    Container(
        padding: EdgeInsets.all(20),
        color: color,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      );
  }
}
