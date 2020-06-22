import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> randomColors = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.teal



  ];

  int index;
  Color currentColor = Color(0x008000);

  void changeColor(){
    setState(() {
      index = Random().nextInt(randomColors.length);
      currentColor = randomColors[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:currentColor),
      child: FlatButton(
        onPressed: changeColor,
        splashColor: Colors.tealAccent,
        child: Text("Change !",
            style: TextStyle(color:Colors.white,fontSize: 24.0, fontStyle: FontStyle.italic)),
      ),
    );
  }
}
