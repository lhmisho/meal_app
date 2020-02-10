import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routesArg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routesArg['title'];
    final categoryId = routesArg['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle, style: null),
      ),
      body: Center(
        child: Text(
          'The receipes for the category',
        ),
      ),
    );
  }
}
