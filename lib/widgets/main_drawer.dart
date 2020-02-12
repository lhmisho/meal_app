import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Text(
              'Cooking up!!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            'Meals',
            Icons.restaurant,
            () => Navigator.of(context).pushNamed('/'),
          ),
          buildListTitle(
            'Filters',
            Icons.settings,
            () => Navigator.of(context).pushNamed(FiltersScreen.routeName),
          ),
        ],
      ),
    );
  }

  Widget buildListTitle(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }
}
