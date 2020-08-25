import 'dart:developer';

import 'package:OnlineShop/onlineshop/api/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    ));

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
            onPressed: () {
              final response = Api().login();
              print(response);
              inspect(response);
            },
            child: Icon(Icons.verified_user)),
      ),
    );
  }
}
