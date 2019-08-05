import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer_main.dart';

import 'categories_screen.dart';
import 'favorite_screen.dart';

class TapScreen extends StatefulWidget {
  @override
  _TapScreenState createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  final List<Map<String,Object>> _page = [
    {"page":CategoryScreen(),"title":"Category"},
    {"page":FavoriteScreen(),"title":"My Favorite"},
  ];
  int _curintPage = 0;

  void selectPage(index){
      setState(() {
        _curintPage=index;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_page[_curintPage]["title"]),
      ),
      drawer: Drawers(),
      body: _page[_curintPage]["page"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curintPage,
        backgroundColor: Theme.of(context).primaryColor,
        onTap: selectPage,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white54,
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("Categories")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("Categories")),
        ],
      ),
    );
  }
}
