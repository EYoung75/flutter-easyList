import "package:flutter/material.dart";

import "./pages/manageProducts.dart";
import "./pages/auth.dart";
import "./pages/products.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      // home: AuthPage(),
      routes: {
        "/" : (BuildContext context) => ProductsPage(),
        "/admin" : (BuildContext context) => ManageProducts()
      },
    );
  }
}
