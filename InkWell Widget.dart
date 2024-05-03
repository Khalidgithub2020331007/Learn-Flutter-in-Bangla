
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title:"TextField Example",
    theme: ThemeData(
        primarySwatch: Colors.red,
          ),
    home: Scaffold(
      appBar: AppBar(title: Text("TextField Example",style:TextStyle(color: Colors.green))),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('on tap');
      },
      child: Container(
        height: 50,
        width: 125,
        alignment: Alignment.center,
        child: Text('My Button'),
      ),
    );
  }
}
