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
    return Row(
      children:[
        Text("Hi"),
        Text("THis"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("is"),
            Text("Khalid.")
          ],
        )
      ]
    );
  }
}
