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
  String _titleValue = "";
  String _description = "";
  double _price;

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
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Product Description"),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                _description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Product Price"),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _price = double.parse(value);
              });
            },
          ),
          SizedBox(height: 10),
          RaisedButton(
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> product = 
              {"title": _titleValue,
                "desciption": _description,
                "price": _price,
                "image": "assets/food.jpg"
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, "/");
            },
            child: Text("Save"),
            )
        ],
      ),
    );
  }
}
