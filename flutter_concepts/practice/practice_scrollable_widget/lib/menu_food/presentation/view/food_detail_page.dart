import 'package:flutter/material.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

class FoodDetailPage extends StatelessWidget {

  const FoodDetailPage({required this.foodEntity, super.key});
  final FoodEntity foodEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodEntity.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoRow('Cuisine', foodEntity.cuisine),
            _buildInfoRow('Difficulty', foodEntity.difficulty),
            _buildInfoRow('Prep Time', '${foodEntity.prepTimeMinutes ?? '-'} mins'),
            _buildInfoRow('Cook Time', '${foodEntity.cookTimeMinutes ?? '-'} mins'),
            _buildInfoRow('Servings', '${foodEntity.servings ?? '-'}'),
            _buildInfoRow('Calories', '${foodEntity.caloriesPerServing ?? '-'} kcal'),
            _buildInfoRow('Rating', foodEntity.rating?.toStringAsFixed(1)),
            _buildInfoRow('Reviews', '${foodEntity.reviewCount ?? 0}'),
            const SizedBox(height: 12),
            if (foodEntity.ingredients != null) ...[
              const Text('Ingredients', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              ...foodEntity.ingredients!.map((i) => Text('• $i')),
              const SizedBox(height: 12),
            ],
            if (foodEntity.instructions != null) ...[
              const Text('Instructions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              ...foodEntity.instructions!.asMap().entries.map(
                    (entry) => Text('${entry.key + 1}. ${entry.value}'),
              ),
              const SizedBox(height: 12),
            ],
            if (foodEntity.tags != null && foodEntity.tags!.isNotEmpty)
              Wrap(
                spacing: 8,
                children: foodEntity.tags!
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
