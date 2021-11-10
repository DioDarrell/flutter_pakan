import 'package:flutter/material.dart';
import 'package:flutter_pakan/Components/products.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Mangot",
      "picture": "images/mangot2.jpg",
      "price": 20000,
      "quantity": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  int cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      child: Card(
        child: ListTile(
          leading: Image.asset(
            cart_prod_picture,
            width: 80.0,
            height: 90.0,
          ),
          title: Text(cart_prod_name),
          subtitle: Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("Harga:"),
                  ),
                ],
              ),
              new Container(
                alignment: Alignment.topLeft,
                child: new Text(
                  "Rp ${cart_prod_price}",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          trailing: FittedBox(
            fit: BoxFit.fill,
            child: Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new IconButton(
                            icon: new Icon(Icons.remove),
                            onPressed: ()=>cart_prod_qty--),
                        
                    new Text(cart_prod_qty.toString()),
                    new IconButton(icon: new Icon(Icons.add), onPressed: () => cart_prod_qty++)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
