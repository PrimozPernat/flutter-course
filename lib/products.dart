import 'package:flutter/material.dart';
import 'package:udemiy_project/pages/detail_product_page.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products) {
    print("Products widget Constructor");
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () => Navigator.pushNamed<bool>(
                        context, "/product/" + index.toString())
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard = Center(
      child: Text("No product found, please add some"),
    );

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print("Products widget build");
    return _buildProductList();
  }
}
