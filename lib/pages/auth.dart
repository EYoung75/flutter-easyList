import "package:flutter/material.dart";

class AuthPage extends StatefulWidget {
  @override
  AuthPageState createState() {
    return AuthPageState();
  }
}

class AuthPageState extends State<AuthPage> {
  String _username = "";
  String _password = "";
  bool _terms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/background.jpg"), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.dstATop)
        )),
        padding: EdgeInsets.all(10),
        child: ListView(
      children: <Widget>[
        TextField(
          onChanged: (String value) {
            setState(() {
             _username = value;
            });
          },
          decoration: InputDecoration(labelText: "Username"),
        ),
        TextField(
          onChanged: (String value) {
            setState(() {
              _password = value;
            });
          },
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(labelText: "Password"),
        ),
        SwitchListTile(
          value: _terms,
          onChanged: (bool value) {
            setState(() {
              _terms = value;
            });
          },
          title: Text("Accept Terms"),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/products");
          },
          child: Text("Login"),
          textColor: Colors.white,
        ),
      ],
        ),
      ),
    );
  }
}
