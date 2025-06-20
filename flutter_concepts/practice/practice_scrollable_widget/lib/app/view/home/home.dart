
import 'package:flutter/material.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MenuFoodPage(),
    );
  }
}
