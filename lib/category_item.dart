import 'package:flutter/material.dart';
import 'package:foodapp/foods_page.dart';
import 'package:foodapp/models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {"category": this.category});
      },
      child: Container(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                this.category.content,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: this.category.color,
              gradient: LinearGradient(colors: [
                _color.withOpacity(
                  0.6,
                ),
                _color
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
