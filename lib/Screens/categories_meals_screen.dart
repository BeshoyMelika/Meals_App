import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';

import '../dummy_data.dart';

class CategoriesMeals extends StatelessWidget {
  // final String title;
  // final String id;

  // const CategoriesMeals(this.title,this.id);
  static const String nameRoutes="/Category-Meals";
  @override
  Widget build(BuildContext context) {
    final areguments=ModalRoute.of(context).settings.arguments as Map<String,String>;
    final title=areguments["title"];
    final id=areguments["id"];

    final catigoryMeal=DUMMY_MEALS.where((meal){
      return meal.categories.contains(id);
    }).toList();

    print("$title");
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
      
        return MealItem(catigoryMeal[index]);
      },
      itemCount:catigoryMeal.length ,),
    );
  }
}
