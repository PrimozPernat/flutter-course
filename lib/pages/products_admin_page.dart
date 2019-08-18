import 'package:flutter/material.dart';
import 'package:udemiy_project/pages/product_create_page.dart';
import 'package:udemiy_project/pages/product_list_page.dart';
import 'package:udemiy_project/pages/products_page.dart';

class ProductsAdminPage extends StatelessWidget {
  static const String PAGE_PATH =  "/admin";



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text("Choose"),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                title: Text("All Products"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/");
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("EasyList"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Create Product",
              ),
              Tab(text: "My Products")
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[ProductCreatePage(), ProductListPage()],
        ),
      ),
    );
  }
}
