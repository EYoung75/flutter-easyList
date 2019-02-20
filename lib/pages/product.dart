import "package:flutter/material.dart";
import "dart:async";

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final double price;

  ProductPage(this.title, this.imageUrl, this.description, this.price);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("This action cannot be undone"),
            actions: <Widget>[
              FlatButton(
                child: Text("Delete"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              ),
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2.5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text("\$${price.toString()}",
                      style: TextStyle(color: Colors.white))),
                      SizedBox(width: 10),
                      Text(title, style: TextStyle(fontSize: 26, decoration: TextDecoration.underline),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text(description, style: TextStyle(fontSize: 16),))
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: FloatingActionButton(
                      child: Icon(Icons.delete),
                      onPressed: () => _showWarningDialog(context)),
                )
              ],
            ),
          )),
    );
  }
}
