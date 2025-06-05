import 'package:flutter/material.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_model.dart';

class FoodDetailPage extends StatelessWidget {

  const FoodDetailPage({super.key, required this.food});
  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoRow('Cuisine', food.cuisine),
            _buildInfoRow('Difficulty', food.difficulty),
            _buildInfoRow('Prep Time', '${food.prepTimeMinutes ?? '-'} mins'),
            _buildInfoRow('Cook Time', '${food.cookTimeMinutes ?? '-'} mins'),
            _buildInfoRow('Servings', '${food.servings ?? '-'}'),
            _buildInfoRow('Calories', '${food.caloriesPerServing ?? '-'} kcal'),
            _buildInfoRow('Rating', food.rating?.toStringAsFixed(1)),
            _buildInfoRow('Reviews', '${food.reviewCount ?? 0}'),
            const SizedBox(height: 12),
            if (food.ingredients != null) ...[
              const Text('Ingredients', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              ...food.ingredients!.map((i) => Text('• $i')),
              const SizedBox(height: 12),
            ],
            if (food.instructions != null) ...[
              const Text('Instructions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              ...food.instructions!.asMap().entries.map(
                    (entry) => Text('${entry.key + 1}. ${entry.value}'),
              ),
              const SizedBox(height: 12),
            ],
            if (food.tags != null && food.tags!.isNotEmpty)
              Wrap(
                spacing: 8,
                children: food.tags!
                    .map((tag) => Chip(label: Text(tag)))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text('$label: ',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Expanded(child: Text(value ?? '-', style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
