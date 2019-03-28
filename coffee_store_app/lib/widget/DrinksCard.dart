import 'package:flutter/material.dart';
import 'package:coffee_store_app/model/DrinkType.dart';
import 'package:transparent_image/transparent_image.dart';

List<DrinkType> mainTypes = <DrinkType>[
  DrinkType('Coffee', 'assets/img/1.png',4.12),
  DrinkType('Tea', 'assets/img/2.png',4.12),
  DrinkType('Juice', 'assets/img/3.png',4.12),
  DrinkType('Smoothie', 'assets/img/4.png',4.12),
];

List<DrinkType> coffeeTypes = <DrinkType>[
  DrinkType('Black Coffee', 'assets/img/5.png',4.12),
  DrinkType('Cappuccino', 'assets/img/6.png',4.12),
  DrinkType('Espresso', 'assets/img/7.png',4.12),
  DrinkType('Latte', 'assets/img/8.jpeg',4.12),
];

List<DrinkType> teaTypes = <DrinkType>[
  DrinkType('Black tea', 'assets/img/9.jpeg',4.12),
  DrinkType('Brown Tea', 'assets/img/10.jpeg',4.12),
  DrinkType('English Tea', 'assets/img/11.jpeg',4.12),
  DrinkType('Herbal Tea', 'assets/img/12.jpeg',4.12),
];

List<DrinkType> juiceTypes = <DrinkType>[
  DrinkType('Lemon Juice', 'assets/img/13.jpeg',4.12),
  DrinkType('Lime Juice', 'assets/img/14.jpeg',4.12),
  DrinkType('plum Juice', 'assets/img/15.jpeg',4.12),
  DrinkType('Tomato Juice', 'assets/img/16.jpeg',4.12),
];
List<DrinkType> smoothieTypes = <DrinkType>[
  DrinkType('Apple Smoothie', 'assets/img/17.jpeg',4.12),
  DrinkType('Blackbery Smoothie', 'assets/img/18.jpeg',4.12),
  DrinkType('Kiwi Fruit Smoothie', 'assets/img/19.jpeg',4.12),
  DrinkType('Raspberry Smoothie', 'assets/img/20.jpeg',4.12),
];

class DrinksCard extends StatelessWidget{

  final DrinkType drinkType;

  const DrinksCard({Key key, this.drinkType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Center(
        child: Stack(
          children: <Widget>[
           FadeInImage(
             placeholder: MemoryImage(kTransparentImage),
             image: AssetImage(
               drinkType.image,
             ),
             height: double.infinity,
             width: double.infinity,
             fit: BoxFit.cover,
             fadeInDuration: Duration(
               microseconds: 500,
             ),
             fadeInCurve: Curves.easeIn,
           ),

            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
            child: Text(
              drinkType.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
