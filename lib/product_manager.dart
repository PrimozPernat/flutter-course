import 'package:flutter/material.dart';

import 'products.dart';

class ProductManger extends StatelessWidget {

  final List<Map<String, dynamic>> products;

  ProductManger(this.products);

  @override
  Widget build(BuildContext context) {
    print("ProductManager State Build()");
    return Column(children: [
      Expanded(child: Products(products))
    ]);
  }
}
