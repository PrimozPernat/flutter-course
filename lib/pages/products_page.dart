import 'package:flutter/material.dart';
import 'package:udemiy_project/pages/products_admin_page.dart';

import 'package:udemiy_project/product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Choose"),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text("Manage Products"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/admin");
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: ProductManger(products, addProduct, deleteProduct),
    );
  }
}