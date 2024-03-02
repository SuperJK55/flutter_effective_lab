import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/models/CategoryModel.dart';
import 'package:flutter_effective_lab/widgets/CategoryItem.dart';

class HorizontalCategoryList extends StatelessWidget {
  const HorizontalCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 180,
      child: ListView.builder(
        padding: const EdgeInsets.all(17),
        scrollDirection: Axis.horizontal,
        itemCount: CategoryModel.items.length,
        itemBuilder: (context, index) {
          return CategoryItem(
              categoryModel: CategoryModel.items[index]);
        },
      ),
    );
  }
}