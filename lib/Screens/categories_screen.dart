import 'package:flutter/material.dart';
import '../widgets/category_item.dart';

import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio:1.5,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((item) {
          return CategoryItem(
            color: item.color,
            title: item.title,
            id: item.id,
          );
        }).toList(),
        // children: <Widget>[
        //   FlutterLogo(),
        //    FlutterLogo(), FlutterLogo(), FlutterLogo(), FlutterLogo(),
        // ],
      ),
    );
  }
}
