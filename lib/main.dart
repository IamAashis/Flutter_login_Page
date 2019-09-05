import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.queue_play_next),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Center(
          child: Column(
            children: <Widget>[
              new Text("Login",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    Icon(Icons.email),
                    Expanded(
                      child: TextField(
                        decoration: new InputDecoration(hintText: "email"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    Icon(Icons.enhanced_encryption),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: new InputDecoration(hintText: "Password"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "SignIn",
                    style: TextStyle(color: Colors.white, ),
                    
                  ),
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
