import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';

class FoodItemWidget extends StatefulWidget {
  const FoodItemWidget({required this.food, super.key});
  final FoodEntity food;

  @override
  State<FoodItemWidget> createState() => _FoodItemWidgetState();
}

class _FoodItemWidgetState extends State<FoodItemWidget>
  with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    final isGrid = context.select<SwitchLayoutBloc, bool>((bloc) => bloc.state);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => FoodDetailPage(foodEntity: widget.food)),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: isGrid ? _buildGridContent() : _buildListTile(widget.food.id),
      ),
    );
  }

  Widget _buildListTile(int foodId) {
    return Slidable(
      key: ValueKey(widget.food.id), 
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
          closeOnCancel: true,
          onDismissed: () {
            context.read<MenuFoodBloc>().add(
              MenuFoodDeleteEvent(widget.food.id.toString()),
            );
          },
        ),
        children: [
          SlidableAction(
            onPressed: (_) {
              context.read<MenuFoodBloc>().add(
                MenuFoodDeleteEvent(widget.food.id.toString()),
              );
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: _buildLeadingImage(widget.food.image),
        title: Text(
          widget.food.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.food.cuisine != null)
            Text(
              'Cuisine: ${widget.food.cuisine}',
              style: const TextStyle(fontSize: 14),
            ),
            if (widget.food.difficulty != null)
              Text(
                'Difficulty: ${widget.food.difficulty}',
                style: const TextStyle(fontSize: 14),
              ),
            if (widget.food.rating != null)
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 16),
                Text(
                  '${widget.food.rating}',
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );

  }

  Widget _buildGridContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: CachedNetworkImage(
            imageUrl: widget.food.image,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(strokeWidth: 2),),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.food.name,
                style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              if (widget.food.rating != null)
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 14),
                  Text(
                    '${widget.food.rating}',
                    style: const TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
