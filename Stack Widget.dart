

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "Stack Example",
    home:Scaffold(
      appBar: AppBar(title: Text("Stack Example")),
      body:MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // alignment: Alignment.center,
    
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ), Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Positioned(
              bottom: -25,
              right:0,
              child:Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),)
        ],
      ),
    );
  }
}

