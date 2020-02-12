import 'package:flutter/material.dart';
import './screens/tab_screens.dart';
import './screens/meal_details_screen.dart';
import './screens/category_meals_screen.dart';
import './home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: MyHomePage(),
      // initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
      },
      onGenerateRoute: (settings){
        // dynamic routs will be there;
      },
      onUnknownRoute: (settings){
        // show 404 error page
        return MaterialPageRoute(builder: (ctx) => MyHomePage());
      },
    );
  }
}
