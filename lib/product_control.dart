import 'package:flutter/material.dart';

class ProdcutControl extends StatelessWidget {
  final Function addProduct;

  ProdcutControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text("Add Product"),
      onPressed: () {
        addProduct("Sweets");
      },
    );
  }
}
