import "package:flutter/material.dart";

class CreateProduct extends StatefulWidget {
  final Function addProduct;

  CreateProduct(this.addProduct);

  @override
  CreateProductState createState() {
    return CreateProductState();
  }
}

class CreateProductState extends State<CreateProduct> {
  String titleValue = "";
  String description = "";
  double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Product Title"),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Product Description"),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Product Price"),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                price = double.parse(value);
              });
            },
          ),
          RaisedButton(
            onPressed: () {
              final Map<String, dynamic> product = 
              {"title": titleValue,
                "desciption": description,
                "price": price,
                "image": "assets/food.jpg"
              };
              widget.addProduct(product);
            },
            child: Text("Save"),
            )
        ],
      ),
    );
  }
}
