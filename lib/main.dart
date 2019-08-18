import 'package:flutter/material.dart';
import 'package:udemiy_project/pages/auth_page.dart';
import 'package:udemiy_project/pages/detail_product_page.dart';
import 'package:udemiy_project/pages/products_admin_page.dart';
import 'package:udemiy_project/pages/products_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
//      home: AuthPage(),
      routes: {
        "/": (BuildContext context) =>
            ProductsPage(_products, _addProduct, _deleteProduct),
        ProductsAdminPage.PAGE_PATH: (BuildContext context) =>
            ProductsAdminPage()
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements =
        settings.name.split("/"); //"/product/1"

        if (pathElements.first.isNotEmpty) {
          return null;
        }

        if (pathElements[1] == "product") {
          final int index = int.parse(pathElements[2]);

          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
                DetailProductPage(
                    _products[index]['title'], _products[index]['image']),
          );
        }

        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              ProductsPage(_products, _addProduct, _deleteProduct),
        );
      },
    );
  }
}
