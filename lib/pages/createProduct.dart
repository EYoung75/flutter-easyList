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

  Widget _buildTitleTextField() {
    return TextField(
      decoration: InputDecoration(labelText: "Product Title"),
      onChanged: (String value) {
        setState(() {
          _titleValue = value;
        });
      },
    );
  }

  Widget _buildDescriptionTextField() {
    return TextField(
      decoration: InputDecoration(labelText: "Product Description"),
      maxLines: 4,
      onChanged: (String value) {
        setState(() {
          _description = value;
        });
      },
    );
  }

  Widget _buildPriceTextField() {
    return TextField(
      decoration: InputDecoration(labelText: "Product Price"),
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        setState(() {
          _price = double.parse(value);
        });
      },
    );
  }

  void _submitForm() {
    final Map<String, dynamic> product = {
      "title": _titleValue,
      "description": _description,
      "price": _price,
      "image": "assets/food.jpg"
    };
    widget.addProduct(product);
    Navigator.pushReplacementNamed(context, "/products");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          _buildTitleTextField(),
          _buildDescriptionTextField(),
          _buildPriceTextField(),
          SizedBox(height: 10),
          RaisedButton(
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: _submitForm,
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}
