import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> steps;
  final List<String> categories;
  final List<String> ingredients;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegan;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;

  const Meal(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.steps,
      @required this.categories,
      @required this.ingredients,
      @required this.complexity,
      @required this.affordability,
      @required this.isGlutenFree,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.isLactoseFree});
}
