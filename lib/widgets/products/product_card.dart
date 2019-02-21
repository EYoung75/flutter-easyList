import "package:flutter/material.dart";

import "./price_tag.dart";

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final int productIndex;

  ProductCard(this.product, this.productIndex);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product["image"]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    product["title"],
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 8,
              ),
              PriceTag(product["price"].toString())
            ],
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2.5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(6)),
              child: Text("Union Station, Denver, CO")),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.info, color: Theme.of(context).accentColor,),
                onPressed: () => Navigator.pushNamed<bool>(
                    context, "/product/" + productIndex.toString()),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}