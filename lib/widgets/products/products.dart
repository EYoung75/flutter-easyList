import "package:flutter/material.dart";

import "./price_tag.dart";

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]["image"]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    products[index]["title"],
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 8,
              ),
              PriceTag(products[index]["price"].toString())
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
                    context, "/product/" + index.toString()),
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

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
          itemBuilder: _buildProductItem, itemCount: products.length);
    } else {
      productCard = Center(
        child: Text("No products added yet"),
      );
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
