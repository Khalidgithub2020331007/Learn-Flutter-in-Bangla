
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title:"Icon Widget Example",
    theme: ThemeData(
        primarySwatch: Colors.red,
          ),
    home: Scaffold(
      appBar: AppBar(title: Text("Icon2 Widget Example",style:TextStyle(color: Colors.green))),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int volume=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        width: 300,
        height:300,
        color: Colors.white,
        padding: EdgeInsets.only(top:16),
        child: Column(
          children: [
            Icon(
              Icons.volume_up,
              size:40,
              color: Colors.red,
            ),
            IconButton(
              icon:Icon(Icons.volume_down),
              onPressed: ()
              {
                print('ONpressed');
                setState(() {
                  volume+=1;
                });
              },
            ),
            Text('$volume')
          ],
        ),

      )
    );
  }
}
