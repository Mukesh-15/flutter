// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }


// // Program 2 a
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body : Center(
//           child: Text(
//             'Hello Mukie',
//             style: TextStyle(color: Colors.blue, fontSize: 30),
//           ),
//         )
//       )
//     );
//   }
// }


// program 2a

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Image.asset('google.png'),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Container Widget Example')),
//         body: Center(
//           child: Container(
//             padding: EdgeInsets.all(50),
//             margin: EdgeInsets.all(50),
//             color: const Color.fromARGB(255, 243, 149, 33),
//             child: Text(
//               'Hello !',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 2b
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: EdgeInsets.all(20),
//                 margin: EdgeInsets.only(right : 20),
//                 color: Colors.blue,
//                 child: Text(
//                   'One',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(20),
//                 color: Colors.green,
//                 child: Text(
//                   'Two',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//               SizedBox(width: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 2b
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Stack with Boxes')),
//         body: Center(
//           child: Stack(
//             children: [
//               Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.blue,
//                 child: Center(
//                   child: Text(
//                     'Box 1',
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                 ),
//               ),

//               Positioned(
//                 top: 30,
//                 left: 0,
//                 child: Container(
//                   width: 150,
//                   height: 150,
//                   color: Colors.green,
//                   child: Center(
//                     child: Text(
//                       'Box 2',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
    


// 3a
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ResponsiveHome(),
//     );
//   }
// }

// class ResponsiveHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Responsive UI Example')),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           // Determine the screen width
//           if (constraints.maxWidth < 600) {
//             // Mobile Layout
//             return Column(
//               children: [
//                 Expanded(child: _buildCard(Colors.red, 'Card 1')),
//                 Expanded(child: _buildCard(Colors.green, 'Card 2')),
//                 Expanded(child: _buildCard(Colors.blue, 'Card 3')),
//               ],
//             );
//           } else {
//             // Tablet/Desktop Layout
//             return Row(
//               children: [
//                 Expanded(child: _buildCard(Colors.red, 'Card 1')),
//                 Expanded(child: _buildCard(Colors.green, 'Card 2')),
//                 Expanded(child: _buildCard(Colors.blue, 'Card 3')),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildCard(Color color, String title) {
//     return Card(
//       color: color,
//       child: Center(
//         child: Text(title, style: TextStyle(color: Colors.white, fontSize: 24)),
//       ),
//     );
//   }
// }




// 3b
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: ResponsiveUI(),
//     );
//   }
// }

// class ResponsiveUI extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     double screenWidth = MediaQuery.of(context).size.width;

//     if (screenWidth < 600)
//     {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("MobileLayout"),
//         ),
//         body: Center(
//           child: Container(
//               width: screenWidth * 0.8,
//               height: 150,
//               color: Colors.yellowAccent,
//               child: Center(
//                 child: Text("MobileLayout"),
//               )  ),),
//       );}
//     else if(screenWidth >=600 && screenWidth <1200){
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("TabletLayout"),
//         ),
//         body: Center(
//           child: Container(
//               width: screenWidth * 0.8,
//               height: 150,
//               color: Colors.blueAccent,
//               child: Center(
//                 child: Text("TabletLayout"),
//               )
//           ),),);
//     }
//     else{
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("DesktopLayout"),
//         ),
//         body: Center(
//           child: Container(
//               width: screenWidth * 0.8,
//               height: 150,
//               color: Colors.blueAccent,
//               child: Center(
//                 child: Text("DesktopLayout"),
//               )          ),

//           ),
//         );
//     }
//   }
// }


// 4a
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home : HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title : Text('Home Screen')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DetailsScren()),
//             )
//           },
//           child: Text('Go to hell'),
//         ),
//       ),
//     );
//   }
// } 

// class DetailsScren extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title : Text("welcome to hell")
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Navigator.pop(context), 
//           child: Text('Go back to heaven')
//           ),
//       ),
//     );
//   }
// }


//4b
// import 'package:flutter/material.dart';
// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: {
//       '/': (context) => HomeScreen(),
//       '/second': (context) => SecondScreen(),
//     },
//   ));
// }
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Navigator.pushNamed(context, '/second'),
//           child: Text('Go to Second Screen'),
//         ),
//       ),
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Navigator.pop(context),
//           child: Text('Go Back'),
//         ),
//       ),
//     );
//   }
// }

// 5a
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text('Counter Example')),
//           body: Counter(),
//         ),
//       );
// }

// class Counter extends StatefulWidget {
//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _count = 0;
//   @override
//   Widget build(BuildContext context) => Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Pressed $_count times', style: TextStyle(fontSize: 24)),
//             ElevatedButton(
//               onPressed: () => setState(() => _count++),
//               child: Text('Increment'),
//             ),
//           ],
//         ),
//       );
// }


// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: Myapp()));

// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     String layout = w < 600 ? "Mobile" : w < 1200 ? "Tablet" : "Desktop";
//     Color color = w < 600 ? Colors.yellowAccent : w < 1200 ? Colors.blueAccent : Colors.red;

//     return Scaffold(
//       appBar: AppBar(title: Text("$layout Layout")),
//       body: Center(
//         child: Container(
//           width: w * 0.8,
//           height: 150,
//           color: color,
//           child: Center(child: Text("$layout Layout")),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// void main() {
//   runApp(MaterialApp(
//     home: Counter(),
//   ));
// }
// class Counter extends StatefulWidget {
//   @override
//   State<Counter> createState(){
//     return CounterState();
//   }
// }
// class CounterState extends State<Counter> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Stateful Example")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Count: $count",
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   count++;
//                 });
//               },
//               child: Text("Add"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Layouts Example')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Row layout
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   box('One', Colors.blue),
//                   SizedBox(width: 10),
//                   box('Two', Colors.green),
//                 ],
//               ),
//               SizedBox(height: 20),
//               // Stack layout
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(width: 100, height: 100, color: Colors.orange),
//                   Container(width: 60, height: 60, color: Colors.red),
//                   Text('Stack', style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget box(String text, Color color) => Container(
//         padding: EdgeInsets.all(20),
//         color: color,
//         child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
//       );
// }


// 6a
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: MyHome()));

// class MyHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Custom Widget")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text("Hello Flutter!", style: TextStyle(fontSize: 24, color: Colors.blue)), 
//           ElevatedButton(onPressed: () {}, child: Text("Click Me"))
//           ],
//         ),
//       ),
//     );
//   }
// }






// 6b
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool isDark = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: isDark ? ThemeData.dark() : ThemeData.light(),
//       home: Scaffold(
//         appBar: AppBar(title: Text("Theme Example")),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () => setState(() => isDark = !isDark),
//             child: Text(isDark ? "Switch to Light" : "Switch to Dark"),
//           ),
//         ),
//       ),
//     );
//   }
// }


// 7a
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: MyForm()));

// class MyForm extends StatelessWidget {
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Simple Form")),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: "Name"),
//             ),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(labelText: "Email"),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(labelText: "Password"),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 print("Name: ${nameController.text}");
//                 print("Email: ${emailController.text}");
//               },
//               child: Text("Submit"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// 7b
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: MyForm()));

// class MyForm extends StatefulWidget {
//   @override
//   State<MyForm> createState() => _MyFormState();
// }

// class _MyFormState extends State<MyForm> {
//   final _key = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Form Validation")),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Form(
//           key: _key,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Name"),
//                 validator: (v) => v!.isEmpty ? "Enter name" : null,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Email"),
//                 validator: (v) => v!.contains("@") ? null : "Invalid email",
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_key.currentState!.validate()) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text("Form Submitted")));
//                   }
//                 },
//                 child: Text("Submit"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 8a
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: MyAnim()));

// class MyAnim extends StatefulWidget {
//   @override
//   State<MyAnim> createState() => _MyAnimState();
// }

// class _MyAnimState extends State<MyAnim> {
//   double size = 100;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Simple Animation")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//               width: size,
//               height: size,
//               color: Colors.blue,
//               duration: Duration(seconds: 1),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() => size = size == 100 ? 200 : 100);
//               },
//               child: Text("Animate"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// 8b
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: MyAnim()));

// class MyAnim extends StatefulWidget {
//   @override
//   State<MyAnim> createState() => _MyAnimState();
// }

// class _MyAnimState extends State<MyAnim> {
//   bool change = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Fade & Slide")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedOpacity(
//               opacity: change ? 0.0 : 1.0,
//               duration: Duration(seconds: 1),
//               child: Container(width: 100, height: 100, color: Colors.blue),
//             ),
//             SizedBox(height: 20),
//             AnimatedContainer(
//               duration: Duration(seconds: 1),
//               margin: EdgeInsets.only(left: change ? 100 : 0),
//               width: 100,
//               height: 100,
//               color: Colors.green,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => setState(() => change = !change),
//               child: Text("Animate"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// 9a
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() => runApp(MaterialApp(home: MyApi()));

// class MyApi extends StatefulWidget {
//   @override
//   State<MyApi> createState() => _MyApiState();
// }

// class _MyApiState extends State<MyApi> {
//   String data = "Loading...";

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   void getData() async {
//     var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
//     setState(() => data = jsonDecode(res.body)['title']);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Fetch API")),
//       body: Center(child: Text(data, style: TextStyle(fontSize: 20))),
//     );
//   }
// }


// 9b
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() => runApp(MaterialApp(home: MyApi()));

// class MyApi extends StatefulWidget {
//   @override
//   State<MyApi> createState() => _MyApiState();
// }

// class _MyApiState extends State<MyApi> {
//   Map data = {};

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   void getData() async {
//     var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
//     setState(() => data = jsonDecode(res.body));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("API Data")),
//       body: data.isEmpty
//           ? Center(child: Text("Loading..."))
//           : Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("ID: ${data['id']}"),
//                   Text("Title: ${data['title']}"),
//                   Text("Body: ${data['body']}"),
//                 ],
//               ),
//             ),
//     );
//   }
// }


// 10b
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: DebugExample()));

// class DebugExample extends StatefulWidget {
//   @override
//   State<DebugExample> createState() => _DebugExampleState();
// }

// class _DebugExampleState extends State<DebugExample> {
//   String message = "No message yet";

//   void showMessage() {
//     setState(() => message = "Hello Debugger!");
//     debugPrint("Message updated: $message"); // Debug log
//   }

//   @override
//   Widget build(BuildContext context) {
//     debugPrint("Building widget... current message: $message");
//     return Scaffold(
//       appBar: AppBar(title: Text("Debug Example")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(message, style: TextStyle(fontSize: 20)),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: showMessage, child: Text("Show Message")),
//           ],
//         ),
//       ),
//     );
//   }
// }



// 10a
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: MyHome()));

// class MyHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Unit Test Example")),
//       body: Center(
//         child: ElevatedButton(
//           key: Key("myButton"), // 👈 key for testing
//           onPressed: () {},
//           child: Text("Click Me"),
//         ),
//       ),
//     );
//   }
// }



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