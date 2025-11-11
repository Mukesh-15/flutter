// 9a
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(home: MyApi()));

class MyApi extends StatefulWidget {
  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  String data = "Loading...";

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
    setState(() => data = jsonDecode(res.body)['title']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fetch API")),
      body: Center(child: Text(data, style: TextStyle(fontSize: 20))),
    );
  }
}
