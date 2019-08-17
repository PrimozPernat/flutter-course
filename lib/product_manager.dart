import 'package:flutter/material.dart';

import 'products.dart';
import 'product_control.dart';

class ProductManger extends StatefulWidget {
  String product;

  ProductManger({this.product}) {
    print("ProductManager Widget Constructor()");
  }

  @override
  State<StatefulWidget> createState() {
    print("ProductManager Widget createState()");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManger> {
  List<String> _products = [];

  @override
  void didUpdateWidget(ProductManger oldWidget) {
    print("ProductManager State didUpdateWidget()");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    print("ProductManager State initState()");
    if (widget.product != null) {
      _products.add(widget.product);
    }
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("ProductManager State Build()");
    return Column(children: [
      Container(
          margin: EdgeInsets.all(16.0), child: ProdcutControl(_addProduct)),
      Expanded(child: Products(_products))
    ]);
  }
}
