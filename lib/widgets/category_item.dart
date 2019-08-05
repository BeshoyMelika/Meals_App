import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed("/Category-Meals", arguments: {"id": id, "title": title});
    // Navigator.of(context).push(MaterialPageRoute(
    //     builder: (BuildContext context) => CategoriesMeals(title,id)));
  }

  const CategoryItem({this.title, this.color, this.id});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
