
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
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 300,
//       color: Colors.grey,
//       child: Text(
//         'Hi, This is Text Example  hkjhkj kjlklj;lkj jhhhljj ;jj;kj jhhlk',
//         textAlign: TextAlign.center,
//
//         overflow: TextOverflow.ellipsis,
//         maxLines: 2,
//         style: TextStyle(
//           color: Colors.red,
//           fontSize: 24,
//           fontStyle: FontStyle.italic,
//           fontWeight: FontWeight.bold,
//           letterSpacing: 2,
//           wordSpacing: 10,
//         ),
//       ),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey,
      child: Text.rich(
        TextSpan(
          text: 'Hi',//default
          children: [
            TextSpan(
              text: 'This is ',
              style: TextStyle(color: Colors.red,fontSize: 40,)
            ),
            TextSpan(
                text: 'Khalid ',
                style: TextStyle(color: Colors.green,fontSize: 20,)
            ),
          ]
        )
      )

    );
  }
}
