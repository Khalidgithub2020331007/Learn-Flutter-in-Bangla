import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
  title: 'First App',
    home:Scaffold(
      body:myapp(),
    ),
  ));
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 300,
      width: 300,
      child: Text("Hello Bangladesh"),
      alignment: Alignment.center,
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green,
        shape:BoxShape.rectangle,
        border: Border.all(
          color: Colors.red,
          width: 10
        )
      ),
      transform: Matrix4.rotationZ(.5),

    );
  }
}
