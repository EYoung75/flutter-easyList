import "package:flutter/material.dart";

import "./createProduct.dart";
import "./myProducts.dart";

class ManageProducts extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ManageProducts(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Choose"),
              ),
              ListTile(title: Text("All Products"), leading: Icon(Icons.shopping_basket), 
              onTap: () {
                Navigator.pushReplacementNamed(context, "/products");
              },)
            ],
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Create Product", icon: Icon(Icons.create),),
              Tab(text: "My Products", icon: Icon(Icons.list),)
            ],
          ),
          automaticallyImplyLeading: true,
          title: Text("Product Manager"),
        ),
        body: TabBarView(
          children: <Widget>[
            CreateProduct(addProduct),
            MyProducts()
          ],
        )     
      ),
    );
  }
}