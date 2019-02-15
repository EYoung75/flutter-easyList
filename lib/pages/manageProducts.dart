import "package:flutter/material.dart";
import "./products.dart";

class ManageProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(title: Text("All Products"), 
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) => ProductsPage()
              ));
            },)
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Product Manager"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Manage")
          ],
        ),
      )      
    );
  }
}