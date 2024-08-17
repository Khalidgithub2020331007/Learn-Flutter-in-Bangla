import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center, // for center
            // alignment: Alignment.bottomCenter,// for bottom center
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Positioned(
                  child: CircleAvatar(
                radius: 50,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
