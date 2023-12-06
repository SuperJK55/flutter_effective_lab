import 'package:flutter/material.dart';

import 'package:flutter_effective_lab/models/ChipModel.dart';

class ChipItem extends StatefulWidget {
  const ChipItem({super.key});

  @override
  State<ChipItem> createState() => _chipsBlockState();
}

class _chipsBlockState extends State<ChipItem> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Wrap(
          spacing: 8.0,
      children: List<Widget>.generate(
        ChipModel.chips.length,
        (int index) => Builder(
          builder: (BuildContext context) {
            return FilterChip(
              showCheckmark: false,
              label: Text(ChipModel.chips.keys.elementAt(index)),
              selected: ChipModel.chips.values.elementAt(index),
              onSelected: (bool selected) {
                setState(() {
                  ChipModel.chips[ChipModel.chips.keys.elementAt(index)] = selected;
                });
              },
            );
          },
        ),
      ),
        )    
    );
  }
}