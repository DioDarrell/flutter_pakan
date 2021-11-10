import 'package:flutter/material.dart';
import 'package:flutter_pakan/Pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Mangot",
      "picture": "images/mangot2.jpg",
      "price": "20.000",
    },
    {
      "name": "Mangot",
      "picture": "images/mangot2.jpg",
      "price": "20.000",
    },
    {
      "name": "Mangot",
      "picture": "images/mangot2.jpg",
      "price": "20.000",
    },
    {
      "name": "Mangot",
      "picture": "images/mangot2.jpg",
      "price": "20.000",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) =>ProductDetails(
                product_detail_name: prod_name,
                product_detail_picture: prod_picture,
                product_detail_price: prod_price,
                )
              )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text("Rp " + prod_price),
                ),
              ),
              child: Image.asset(prod_picture,
              fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
