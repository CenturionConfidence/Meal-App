import 'package:flutter/material.dart';
import 'package:meals_app/models/models/dummy_data.dart';

import '../widgets/meal_item.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({Key? key}) : super(key: key);

  static const routeName = '/category-detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            categoryMeals[index].id,
            categoryMeals[index].affordability,
            categoryMeals[index].complexity,
            categoryMeals[index].color,
            categoryMeals[index].duration,
            categoryMeals[index].title,
            categoryMeals[index].title,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
