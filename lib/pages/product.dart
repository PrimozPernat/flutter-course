import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/united.jpg"),
          Container(padding: EdgeInsets.all(10.0), child: Text('Details')),
          Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text("Back"),
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                onPressed: () => Navigator.pop(context),
              )),
        ],
      ),
    );
  }
}
