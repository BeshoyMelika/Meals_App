import 'package:flutter/material.dart';
class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(

        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            height: 140,
            width: double.infinity,
            padding: EdgeInsets.all(15),

            color: Theme.of(context).accentColor,
            child: Text("Cooking Up!",style: Theme.of(context).textTheme.body1,),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("Meals"),
            leading: Icon(Icons.restaurant),
            onTap: (){},
          ),
           ListTile(
            title: Text("Filters"),
            leading: Icon(Icons.settings),
            onTap: (){},
          )
        ],
      ),
    );
  }
}