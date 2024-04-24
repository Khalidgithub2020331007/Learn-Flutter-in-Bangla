

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title:"Hello",
    home: Scaffold(
      appBar: AppBar(title: Text("Hello2"),),
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text('hi'),
        ),
        Container(
          color: Colors.amber,
          alignment: Alignment.center,
          child: Text('hi'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text('hi'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('hi'),
        ),
        Container(
          color: Colors.yellowAccent,
          alignment: Alignment.center,
          child: Text('hi'),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: Text('hi'),
        ),
      ],

    );
  }
}
