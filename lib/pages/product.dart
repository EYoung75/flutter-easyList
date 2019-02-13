import "package:flutter/material.dart";
import "dart:async";

class ProductPage extends StatelessWidget{
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() {
        Navigator.pop(context, false);
        return Future.value(false);
      } ,
          child: Scaffold(
        appBar: AppBar(
          title: Text(title)
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Image.asset(imageUrl),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(title)),
              Container(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text("Delete"),
                  onPressed: () => Navigator.pop(context, true),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}