
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title:"Text Widget Example",
    theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity
    ),
    home: Scaffold(
      appBar: AppBar(title: Text("Hello2"),),
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey,
      // child: Image.network('https://media.istockphoto.com/id/1214907564/photo/protective-antiviral-mask-on-the-cats-face-protective-face-mask-for-animals-coronavirus-and.jpg?s=612x612&w=0&k=20&c=IFA1O9mCP7KTUo5hq2zm2Xy-D62lWU82JaiVB1BiDow='),// Use form Online
      child: Image.asset('assets/images/cat.jpeg'),
    );
  }
}
