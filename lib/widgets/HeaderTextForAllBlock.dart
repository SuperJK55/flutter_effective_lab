import 'package:flutter/material.dart';

class HeaderTextForAllBlock extends StatelessWidget {
  const HeaderTextForAllBlock(
      {super.key, required this.title, required this.paragraph});

  final String title;
  final String paragraph;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 8),
          Text(
            paragraph,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}