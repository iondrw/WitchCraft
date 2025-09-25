// lib/widgets/generic_grid.dart
import 'package:flutter/material.dart';

class GenericGrid<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(T item) builder;
  final int crossAxisCount;
  final double childAspectRatio;

  const GenericGrid({
    super.key,
    required this.items,
    required this.builder,
    this.crossAxisCount = 2, // Valor por defecto
    this.childAspectRatio = 0.7, // Valor por defecto
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return builder(item);
      },
    );
  }
}
