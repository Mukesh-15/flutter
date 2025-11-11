// 9b
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(home: MyApi()));

class MyApi extends StatefulWidget {
  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  Map data = {};

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
    setState(() => data = jsonDecode(res.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Data")),
      body: data.isEmpty
          ? Center(child: Text("Loading..."))
          : Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ID: ${data['id']}"),
                  Text("Title: ${data['title']}"),
                  Text("Body: ${data['body']}"),
                ],
              ),
            ),
    );
  }
}
