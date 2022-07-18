import 'package:flutter/material.dart';
import 'package:meals_app/models/models/meal.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/category_detail_screen.dart';

class MealItem extends StatelessWidget {
  const MealItem(
    this.id,
    this.affordability,
    this.complexity,
    this.color,
    this.duration,
    this.title,
    categoryMeal, {
    Key? key,
  }) : super(key: key);

  final String id;
  final String title;
  final Color color;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  String get ComplexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';
      case Complexity.challenging:
        return 'Challenging';
      case Complexity.hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get AffordabilityText {
    switch (affordability) {
      case Affordability.affordable:
        return 'Affordable';
      case Affordability.pricey:
        return 'Pricey';
      case Affordability.luxurious:
        return 'Luxurious';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          MealDetailScreen.routeName,
          arguments: id,
        );
      },
      child: Card(
        elevation: 2,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: color,
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.schedule),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.work),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(ComplexityText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.attach_money),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(AffordabilityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
