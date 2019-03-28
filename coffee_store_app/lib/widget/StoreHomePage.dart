import 'package:flutter/material.dart';
import 'package:coffee_store_app/widget/DrinkCarousel.dart';
import 'package:coffee_store_app/widget/DrinksList.dart';

class StoreHomePage extends StatelessWidget{

  final String title;

  const StoreHomePage({Key key, this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          DrinksCarousel(),
          DrinksList(),
        ],
      ),
    );
  }
}