import 'dart:async';

import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  DetailProductPage(this.title, this.imageUrl);

  void _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("This action cannot be undone!"),
            actions: <Widget>[
              FlatButton(
                child: Text("DISCARD"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text("CONTINUE"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("Back button pressed");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(padding: EdgeInsets.all(10.0), child: Text('Details')),
            Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text("DELETE"),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () => _showWarningDialog(context),
                )),
          ],
        ),
      ),
    );
  }
}
