import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_picture,
      this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('PAKAN'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("${widget.product_detail_price}"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose the quantity"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qty")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy now"),
              )),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart), onPressed: () {})
            ],
          ),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          
        ],
      ),
    );
  }
}
