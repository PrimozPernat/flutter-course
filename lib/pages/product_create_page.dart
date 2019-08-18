import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue = "";
  String _description = "";
  double _price = 0.0;
  bool _acceptTerms = false;

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
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Product Description"),
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                _description = value;
              });
            },
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Product Price"),
              onChanged: (String value) {
                setState(() {
                  _price = double.parse(value);
                });
              }),
          SwitchListTile(
            value: _acceptTerms,
            title: Text("Accept Terms"),
            onChanged: (bool value) {
              setState(() {
                _acceptTerms = value;
              });
            },
          ),
          SizedBox(
            height: 16.0,
          ),
          RaisedButton(
            child: Text("Save"),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> product = {
                "title": _titleValue,
                "description": _description,
                "price": _price,
                "image": "assets/united.jpg"
              };

              widget.addProduct(product);

              Navigator.pushReplacementNamed(context, "/");
            },
          )
        ],
      ),
    );
  }
}
