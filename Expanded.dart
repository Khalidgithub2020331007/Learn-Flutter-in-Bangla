import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepOrange,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ))
        ],
      )),
    );
  }
}
