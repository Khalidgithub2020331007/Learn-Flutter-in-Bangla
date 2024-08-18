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
        body: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          children: [
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
