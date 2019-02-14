import "package:flutter/material.dart";

import "../product_manager.dart";
import "./manageProducts.dart";

class ProductsPage extends StatelessWidget {
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
            ListTile(title: Text("Manage Products"), 
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => ManageProducts()
              ));
            },)
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: ProductManager(),
    );
  }
}