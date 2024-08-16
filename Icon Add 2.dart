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
          appBar: AppBar(
            title: const Text('HomePage'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            leading: const Icon(Icons.message),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
            ],
          ),
        ));
  }
}
