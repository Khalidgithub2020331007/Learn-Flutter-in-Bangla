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
  List<int> list= [];
  @override
  void initState()
  {
    for(int i=0;i<50;i++)
      list.add(i);
    super.initState();
  }
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:list.length,
        itemBuilder: (BuildContext cnx,int index)
    {
      return ListTile(
      title: Text("Item no ${list[index]}"),
      leading: Container(
      height: 40,
      width: 50,
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
    ),
    trailing: Icon(Icons.arrow_back),
      );

    });
  }
}
