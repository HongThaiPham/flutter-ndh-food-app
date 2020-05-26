import 'package:flutter/material.dart';
import 'package:foodapp/categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Food App",
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            fontFamily: 'Itim',
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
                bodyText2: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
                headline6: TextStyle(
                    fontSize: 28,
                    fontFamily: "Sunshiney",
                    color: Colors.white))),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Food\'s Categories"),
          ),
          body: SafeArea(child: CategoriesPage()),
        ));
  }
}
