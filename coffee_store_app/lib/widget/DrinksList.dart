import 'package:flutter/material.dart';
import 'package:coffee_store_app/widget/DrinksCard.dart';

class DrinksList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10.0),
        children: coffeeTypes.map((drinkType){
          return DrinksCard(
            drinkType: drinkType,
          );
        }).toList(),
      ),
    );
  }
}