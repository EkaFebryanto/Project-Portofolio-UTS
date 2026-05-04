import 'package:flutter/material.dart';
import 'package:project_uts_portofolio/constants/app_colors.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GridItem> gridItems = List.generate(
      12,
      (index) => GridItem(
        title: 'Item ${index + 1}',
        color: Colors.primaries[index % Colors.primaries.length],
        icon: _getIcon(index),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Grid View'), elevation: 0),
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: GridView.builder(
          padding: const EdgeInsets.all(18),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 18,
            crossAxisSpacing: 18,
            childAspectRatio: 0.95,
          ),
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            return GridItemCard(item: gridItems[index]);
          },
        ),
      ),
    );
  }

  IconData _getIcon(int index) {
    final icons = [
      Icons.flutter_dash,
      Icons.star,
      Icons.favorite,
      Icons.music_note,
      Icons.camera_alt,
      Icons.location_on,
      Icons.email,
      Icons.phone,
      Icons.shopping_cart,
      Icons.lightbulb,
      Icons.bookmark,
      Icons.share,
    ];
    return icons[index % icons.length];
  }
}

class GridItem {
  final String title;
  final Color color;
  final IconData icon;

  GridItem({required this.title, required this.color, required this.icon});
}

class GridItemCard extends StatelessWidget {
  final GridItem item;

  const GridItemCard({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(18),
      elevation: 6,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('${item.title} diklik')));
        },
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [item.color.withValues(alpha: 0.88), item.color],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, size: 40, color: Colors.white),
              const SizedBox(height: 12),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
