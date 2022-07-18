import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_detail_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(this.id, this.color, this.title, {Key? key})
      : super(key: key);

  final String id;
  final String title;
  final Color color;

  void nextPage(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryDetailScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => nextPage(context),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
