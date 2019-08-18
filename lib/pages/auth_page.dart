import 'package:flutter/material.dart';
import 'package:udemiy_project/pages/products_page.dart';

import 'detail_product_page.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
        ),
      ),
    );
  }
}
