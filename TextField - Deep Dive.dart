
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
  String text='';
  bool _secure=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration:InputDecoration(
              hintText: 'Enter your Password',
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.orange,
                fontSize: 20,
              ),
              hintStyle: TextStyle(
                color: Colors.blue
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              prefixIcon: Icon(Icons.account_circle),
              suffixIcon:IconButton(
                icon: Icon(_secure?Icons.remove_red_eye:Icons.security),
              onPressed: ()
                {
                  setState(() {
                    _secure=!_secure;
                  });

                },)

              // errorText: text.isEmpty?'error':null,
            ),
            keyboardType: TextInputType.text,
          obscureText: _secure,
            obscuringCharacter: '*',
            maxLength: 10,
            // maxLines: 2,
            onChanged: (value)
            {
              text=value;
            },
            onSubmitted: (value)
            {
              setState(() {
                text=value;
              });
              print(value);
            },
          ),
        ],
      )
    );
  }
}

