import "package:flutter/material.dart";

class AuthPage extends StatefulWidget {
  String username = "";
  String password = "";

  @override
  AuthPageState createState() {
    return AuthPageState();
  }
}

class AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
          child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  widget.username = value;
                });
              },
              decoration: InputDecoration(labelText: "Username"),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  widget.password = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/products");
              },
              child: Text("Login"),
            ),
          ],
        ),
      )),
    );
  }
}
