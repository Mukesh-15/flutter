// 10a
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHome()));

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Unit Test Example")),
      body: Center(
        child: ElevatedButton(
          key: Key("myButton"), // 👈 key for testing
          onPressed: () {},
          child: Text("Click Me"),
        ),
      ),
    );
  }
}



// create a test file like this
// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter/material.dart';
// import 'package:your_app/main.dart'; // change to your actual import path

// void main() {
//   testWidgets("Button is displayed with correct text", (WidgetTester tester) async {
//     await tester.pumpWidget(MaterialApp(home: MyHome()));

//     expect(find.text("Click Me"), findsOneWidget); // check text
//     expect(find.byKey(Key("myButton")), findsOneWidget); // check button
//   });
// }
