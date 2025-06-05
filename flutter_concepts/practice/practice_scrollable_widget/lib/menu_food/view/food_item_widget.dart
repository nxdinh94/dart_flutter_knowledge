import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/switch_layout/switch_layout_bloc.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_model.dart';
import 'package:practice_scrollable_widget/menu_food/view/food_detail_page.dart';

class FoodItemWidget extends StatelessWidget {

  const FoodItemWidget({required this.food, super.key});
  final FoodModel food;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => FoodDetailPage(food: food)),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: Builder(
          builder: (context) {
            final isGrid = context.select<SwitchLayoutBloc, bool>((bloc) => bloc.state);
            return ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: isGrid ? null : _buildLeadingImage(food.image),
              title: Text(
                food.name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (food.cuisine != null)
                  Text('Cuisine: ${food.cuisine}', style: const TextStyle(fontSize: 14)),
                  if (food.difficulty != null)
                  Text('Difficulty: ${food.difficulty}', style: const TextStyle(fontSize: 14)),
                  if (food.rating != null)
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(' ${food.rating}', style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            );
          },

        ),
      ),
    );
  }

  Widget _buildLeadingImage(String imageUrl) {
    return SizedBox(
      width: 60,
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator(strokeWidth: 2)),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
