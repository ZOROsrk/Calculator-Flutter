import 'package:flutter/material.dart';
import 'HomePage.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return new MaterialApp(
      title: "My Calculator",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,

      ),
    );
  }
}
