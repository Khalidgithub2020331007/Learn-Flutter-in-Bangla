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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Column'),
          ),
          body: Row(
            children: [
              Container(
                width: 300,
                height: 400,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              Container(
                width: 300,
                height: 400,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
