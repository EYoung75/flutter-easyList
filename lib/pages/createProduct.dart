import "package:flutter/material.dart";

class CreateProduct extends StatefulWidget {
  @override
  CreateProductState createState() {
    return CreateProductState();
  }
}

class CreateProductState extends State<CreateProduct> {
  String titleValue = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String value) {
            setState(() {
              titleValue = value;
            });
          },
        ),
        Text(titleValue)
      ],
    );
  }
}