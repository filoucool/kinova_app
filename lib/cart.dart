import 'package:flutter/material.dart';
import 'object.dart';
import 'MySQL.dart';

const KinovaColor =  Color(0xFF00147A);
const KinovaMatchButtons = Color(0xFF2D90A0);
const KinovaMatchBG = Color(0xFFDEF5FA);
const KinovaMatchOthers = Color(0xFF7AB4C0);

class Cart extends StatefulWidget {
  final List<items> _cart;

  Cart(this._cart);

  @override
  _CartState createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  var db = new Mysql();

  _CartState(this._cart);

  List<items> _cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KinovaColor,
        title: Text('Panier'),
      ),
      body: ListView.builder(
          itemCount: _cart.length,
          itemBuilder: (context, index) {
            var item = _cart[index];
            return Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              child: Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(
                    item.icon,
                    color: item.color,
                  ),
                  title: Text(item.name),
                  trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          _cart.remove(item);
                        });
                      }),
                ),
              ),
            );
          }),
    );
  }
  void _sendOrder() {
    var test = '';
    db.getConnection().then((conn){
      String sql = 'qqch';
      conn.query(sql).then((results) {
        for(var row in results){
          setState(() {
            test = row[0];
          });
        }
      });
    });
  }
}