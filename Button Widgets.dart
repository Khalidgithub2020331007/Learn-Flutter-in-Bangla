
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


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
            onPressed: (){
              print('OnPressed');
            }, child: Text('Click')),
            TextButton(
        onPressed: (){
          print('OnPressed');
        }, child: Text('Click')),
            
            ElevatedButton.icon(
              icon: Icon(Icons.account_circle),
              onPressed: (){
                print('OnPressed');
              },
              label: Text('Click Me'),
              
            ),
            IconButton(icon: Icon(Icons.security),onPressed: (){print('OnPressed');},),
            FloatingActionButton(onPressed: (){print('onPressed');},
            child: Text('Click'),)

          ],
        ),
      ),
    );
  }
}

