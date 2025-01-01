import 'package:flutter/material.dart';
import 'home_page.dart';

class AppWidth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),  
    );
  }
}