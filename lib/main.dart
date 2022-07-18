import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_detail_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/settings_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          secondary: Colors.amber,
        ),
        fontFamily: 'RobotoCondensed',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
              ),
              bodyText2: const TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
              ),
              headline1: const TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      
      routes: {
        '/': (ctx) => const TabsScreen(),
        FavoritesScreen.routeName: (ctx) => const FavoritesScreen(),
        CategoryDetailScreen.routeName: (ctx) => const CategoryDetailScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
        SettingsScreen.routeName: (ctx) => const SettingsScreen(),
      },
    );
  }
}
