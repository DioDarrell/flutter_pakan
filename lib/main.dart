import 'package:flutter/material.dart';
import 'package:flutter_pakan/Components/products.dart';
import 'package:flutter_pakan/Pages/cart.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('PAKAN'),
        actions: <Widget>[
          // new IconButton(
          //     icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              }),
        ],
      ),
      body: Container(
        height: 450.0,
        child: Products(),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Reku'),
              accountEmail: Text('1931710173@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(backgroundColor: Colors.grey),
              ),
            ),
            //body drawer
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Cart'),
                leading: Icon(
                  Icons.add_shopping_cart,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
