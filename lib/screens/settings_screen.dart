import 'package:flutter/material.dart';

import 'package:meals_app/widgets/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _isGlutenFree = false;
  var _isLactoseFree = false;
  var _isVegan = false;
  var _isVegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SwitchListTile(
            title: const Text('Gluten-Free'),
            subtitle: const Text('Only Gluten-free meals'),
            value: _isGlutenFree,
            onChanged: (newValue) {
              setState(() {
                _isGlutenFree = newValue;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Lactose-Free'),
            subtitle: const Text('Only Lactose-free meals'),
            value: _isLactoseFree,
            onChanged: (newValue) {
              setState(() {
                _isLactoseFree = newValue;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Vegan'),
            subtitle: const Text('Only Vegan meals'),
            value: _isVegan,
            onChanged: (newValue) {
              setState(() {
                _isVegan = newValue;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Vegetarian'),
            subtitle: const Text('Only Vegetarian foods'),
            value: _isVegetarian,
            onChanged: (newValue) {
              setState(() {
                _isVegetarian = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}
