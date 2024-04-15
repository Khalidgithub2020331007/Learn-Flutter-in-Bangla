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


class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Item 1"),
          leading: Container(
          height: 40,
          width: 50,
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text("Item 2"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 2"),
          trailing: Icon(Icons.arrow_back),
        ),
      ],
    );

  }
}
