//2ai
import 'package:flutter/material.dart'; 
void main() { 
  runApp(MaterialApp(home: MyApp())); 
}
class MyApp extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
        appBar: AppBar(title: Text('Image Asset Example')), 
        body: Center( 
          child: Image.asset('assets/google.jpg'), 
        ), 
    );
  } 
} 