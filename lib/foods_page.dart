import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';

class FoodsPage extends StatelessWidget {
  final Category category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food from category ${category.content}"),
      ),
      body: Container(
        child: Center(child: Text("sss")),
      ),
    );
  }
}
