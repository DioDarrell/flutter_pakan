import 'package:flutter/material.dart';
import 'package:flutter_pakan/Components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Cart'),
        actions: <Widget>[],
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: new Text("Total:"),
              subtitle: Text(""),
            )),
            Expanded(
                child: new MaterialButton(
              onPressed: () {},
              child: Text(
                "Checkout",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blueAccent,
            )),
          ],
        ),
      ),
    );
  }
}
