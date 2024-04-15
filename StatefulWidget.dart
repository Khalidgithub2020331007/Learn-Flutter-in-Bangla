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
  String txt=" ";

  void initState()
  {
    txt="Hello Statefull widget";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text(txt),
        ElevatedButton(
          onPressed:()
              {
                setState(() {
                  txt="xyz";
                });
                print("onPressed $txt");
              },
          child:Text("Change"),
        )

      ],)),
    );
  }
}
