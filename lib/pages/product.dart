import "package:flutter/material.dart";

class ProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product details")
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Image.asset("assets/food.jpg"),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Details")),
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text("Back"),
                onPressed: () => Navigator.pop(context),
              ),
            )
          ],
        ),
      )
    );
  }
}