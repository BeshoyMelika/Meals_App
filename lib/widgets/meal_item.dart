import 'package:flutter/material.dart';
import 'package:meals_app/Screens/meals_details_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  MealItem(this.meal);
 String get complexity{
      switch (meal.complexity) {
        case Complexity.Hard :
          return "Hard";
          break;
        case Complexity.Simple :
        return "Simple";
        break;
        case Complexity.Challenging :
        return "Challenging";
        break;
        default: return "UnKnown";
      }
  }

   String get affordability{
      switch (meal.affordability) {
        case Affordability.Affordable :
          return "Affordable";
          break;
        case  Affordability.Luxurious :
        return "Luxurious";
        break;
        case  Affordability.Pricey :
        return "Pricey";
        break;
        default: return "UnKnown";
      }
  }

  void selctMeal(context){
      Navigator.of(context).pushNamed(MealDetailsScreen.nameRoutes,arguments: meal);
  }
  @override
  Widget build(BuildContext context) {
    print(meal.complexity);
    return InkWell(
      onTap: ()=>selctMeal(context),
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ClipRRect( 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      color: Colors.black54,
                      child: Text(
                        meal.title,
                        style: Theme.of(context).textTheme.title,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.schedule),
                        SizedBox(
                          width: 6,
                        ),
                        Text("${meal.duration} min")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.work),
                        SizedBox(
                          width: 6,
                        ),
                        Text(complexity)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(
                          width: 6,
                        ),
                        Text(affordability)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
