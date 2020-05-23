import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class MealsCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Meals'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView(
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color,
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
