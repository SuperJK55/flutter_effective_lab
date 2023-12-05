import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/models/CategoryModel.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(right: 8.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 10,
          fixedSize: const Size(225, 130),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.black.withAlpha(90),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Image.asset(
                    categoryModel.imageName,
                    width: 36,
                    height: 36,
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Text(
                    categoryModel.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    categoryModel.subtitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  Text(
                    '${categoryModel.cost} в ${categoryModel.period}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ]),
        ),
      ),
    );
  }
}