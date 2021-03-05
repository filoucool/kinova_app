import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const KinovaColor =  Color(0xFF00147A);
const KinovaMatchButtons = Color(0xFF2D90A0);
const KinovaMatchBG = Color(0xFFDEF5FA);
const KinovaMatchOthers = Color(0xFF7AB4C0);

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Restaurant Kinova'),
        centerTitle: true,
        backgroundColor: KinovaColor,
      ),
      body: Center(
          child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: KinovaMatchButtons,
      ),
    );
  }
}
