import 'package:flutter/material.dart';
import 'package:udemiy_project/pages/home.dart';
import 'package:udemiy_project/product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: HomePage(),
    );
  }
}
