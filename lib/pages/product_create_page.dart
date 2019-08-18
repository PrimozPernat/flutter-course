import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = "";
  String description = "";
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Product Title"),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Product Description"),
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                description = value;
              });
            },
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Product Price"),
              onChanged: (String value) {
                setState(() {
                  price = double.parse(value);
                });
              }),
          RaisedButton(
            child: Text("Save"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
