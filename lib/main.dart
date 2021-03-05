import 'package:flutter/material.dart';
const KinovaColor =  Color(0xFF00147A);

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar:AppBar(
      title: Text('Restaurant Kinova'),
      centerTitle: true,
      backgroundColor: KinovaColor,
    ),
  ),
));
