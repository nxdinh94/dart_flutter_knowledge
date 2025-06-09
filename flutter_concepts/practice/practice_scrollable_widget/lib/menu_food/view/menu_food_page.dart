import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/switch_layout/switch_layout_bloc.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/switch_layout/switch_layout_event.dart';
import 'package:practice_scrollable_widget/menu_food/menu_food.dart';
import 'package:practice_scrollable_widget/menu_food/view/food_item_widget.dart';
class MenuFoodPage extends StatefulWidget {
  const MenuFoodPage({super.key});

  @override
  State<MenuFoodPage> createState() => _MenuFoodPageState();
}

class _MenuFoodPageState extends State<MenuFoodPage> {

  late bool isGrid;
  @override
  Widget build(BuildContext context) {

    isGrid = context.select<SwitchLayoutBloc, bool>((bloc) => bloc.state);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Food'),
        actions: [
          Switch(
            value: isGrid,
            activeColor: Colors.red,
            onChanged: (bool value) {
              if (value) {
                BlocProvider.of<SwitchLayoutBloc>(context).add(const SwitchLayoutToListEvent());
              }
              else {
                BlocProvider.of<SwitchLayoutBloc>(context).add(const SwitchLayoutToGridEvent());
              }
            },
          ),
        ],
      ),
      body: BlocConsumer<MenuFoodBloc, MenuFoodState>(
        builder: (context, state) {
          if (state is MenuFoodLoading ) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (state is MenuFoodLoadFailure) {
            return Center(child: Text(state.error.toString()));
          }
          else if (state is MenuFoodLoadSuccess || state is MenuFoodDeleteSuccess) {
            final menuFoods = state.menuFoods;
            if (menuFoods == null || menuFoods.isEmpty) {
              return const Center(child: Text('No menu food available'));
            }
            final foodItems = menuFoods
                .where((e) => !e.isDeleted)
                .map((e) => FoodItemWidget(food: e))
                .toList();

            if(foodItems.isEmpty) {
              return const Center(child: Text('No menu food available'));
            }else{
              if (isGrid) {
                return GridView.count(
                  crossAxisCount: 2,
                  children: foodItems,
                );
              }
              return ListView(
                children: foodItems,
              );
            }

          }
          // Có thể thêm trường hợp khởi tạo hoặc fallback
          return const SizedBox.shrink();
        },
        listener: (BuildContext context, MenuFoodState state) {
          if (state is MenuFoodDeleteSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Deleted food: ${state.menuFoods?.first.name}')),
            );
          }
        },
      ),
    );
  }
}
