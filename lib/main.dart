import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('Assets/Images/burger.png');
  return await rootBundle.loadString('Assets/Images/fries.png');
  return await rootBundle.loadString('Assets/Images/hot_dog.png');
}

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
        leading: Align(
          alignment: Alignment.topRight,
          child: IconButton (icon:Icon(Icons.shopping_cart),
              onPressed:() {},
            ),
        ),
      ),
      body: Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Assets/Images/fries.png',
            height: 50,
              width: 50,
            ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Assets/Images/burger.png',
                height: 50,
                width: 50,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Assets/Images/hot_dog.png',
                height: 50,
                width: 50,
              ),
            ),
        ],
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            RaisedButton.icon(
              onPressed: () {},
              label: Text('Ajouter'),
              color: KinovaMatchButtons,
              icon: Icon(
                  Icons.shopping_cart
              ),
            ),
            RaisedButton.icon(
              onPressed: () {},
              label: Text('Ajouter'),
              color: KinovaMatchButtons,
              icon: Icon(
                  Icons.shopping_cart
              ),
            ),
            RaisedButton.icon(
              onPressed: () {},
              label: Text('Ajouter'),
              color: KinovaMatchButtons,
              icon: Icon(
                  Icons.shopping_cart
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Assets/Images/fries.png',
                height: 50,
                width: 50,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Assets/Images/burger.png',
                height: 50,
                width: 50,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Assets/Images/hot_dog.png',
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            RaisedButton.icon(
              onPressed: () {},
              label: Text('Ajouter'),
              color: KinovaMatchButtons,
              icon: Icon(
                  Icons.shopping_cart
              ),
            ),
            RaisedButton.icon(
              onPressed: () {},
              label: Text('Ajouter'),
              color: KinovaMatchButtons,
              icon: Icon(
                  Icons.shopping_cart
              ),
            ),
            RaisedButton.icon(
              onPressed: () {},
              label: Text('Ajouter'),
              color: KinovaMatchButtons,
              icon: Icon(
                  Icons.shopping_cart
              ),
            ),
          ],
        ),
      ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: KinovaMatchButtons,
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}