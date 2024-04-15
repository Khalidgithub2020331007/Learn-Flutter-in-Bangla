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

class myapp extends StatelessWidget{
  Widget build (BuildContext context)
  {
    return Center(
      child:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton("OK"),
          SizedBox(
            height: 10,
          ),
          CustomButton("Click"),
          CustomButton("YES"),
          SizedBox(
            height: 10,
          ),
          CustomButton("NO"),
          CustomButton("OK"),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  final String title;
  CustomButton (this.title);
  Widget build (BuildContext Context)
  {
    return InkWell(
      onTap: ()
      {
        print('On Tap');
      },
      child : Container(
        height: 40,
        width:100,
        decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
        child: Center(child: Text(title),),
      ),


    );
  }
}
