import 'package:flutter/material.dart';

import 'package:udemiy_project/product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: ProductManger(),
    );
  }
}
