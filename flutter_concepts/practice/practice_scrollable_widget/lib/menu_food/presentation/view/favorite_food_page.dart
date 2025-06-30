import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/bloc/food_bloc.dart';

class FavoriteFoodPage extends StatelessWidget {
  const FavoriteFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Món ăn yêu thích')),
      body: BlocBuilder<LocalFoodBloc, LocalFoodState>(
        builder: (context, state) {
          if (state is LocalFoodLoadSuccess) {
            final favorites = state.localFoods;

            if (favorites.isEmpty) {
              return const Center(child: Text("Không có món nào trong danh sách yêu thích."));
            }

            return ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final food = favorites[index];

                return ListTile(
                  leading: Image.network(
                    food.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(food.name),
                  subtitle: food.rating != null
                      ? Text('⭐ ${food.rating}')
                      : null,
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () {
                      context.read<LocalFoodBloc>().add(
                        SaveFavoriteFoodEvent(food), // bạn có thể tạo RemoveFavoriteFoodEvent riêng
                      );
                    },
                  ),
                );
              },
            );
          }

          if (state is LocalFoodLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text("Chưa có dữ liệu."));
        },
      ),
    );
  }
}
