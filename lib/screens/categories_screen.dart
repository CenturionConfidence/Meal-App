import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

import '../models/models/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MainDrawer(),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: dummyCategories.map((catData) {
          return CategoryItem(
            catData.id,
            catData.color,
            catData.title,
          );
        }).toList(),
      ),
    );
  }
}
