import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> faivoretsMeal;

  FavoritesScreen(this.faivoretsMeal);

  @override
  Widget build(BuildContext context) {
    if (faivoretsMeal.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: faivoretsMeal[index].id,
            imageUrl: faivoretsMeal[index].imageUrl,
            title: faivoretsMeal[index].title,
            duration: faivoretsMeal[index].duration,
            complexity: faivoretsMeal[index].complexity,
            affordability: faivoretsMeal[index].affordability,
          );
        },
        itemCount: faivoretsMeal.length,
      );
    }
  }
}
