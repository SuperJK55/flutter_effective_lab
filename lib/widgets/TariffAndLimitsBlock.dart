import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/models/TariffAndLimitsModel.dart';
import 'package:flutter_effective_lab/theme/MyAppColor.dart';

class TariffAndLimitsBlock extends StatelessWidget {
  const TariffAndLimitsBlock({super.key, required this.tariffAndLimitsModel});

  final TariffAndLimitsModel tariffAndLimitsModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            tariffAndLimitsModel.imageName,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 18,
                ),
                Wrap(
                  children: [
                    Text(
                      tariffAndLimitsModel.title,
                      style: Theme.of(context).textTheme.bodyMedium,
                      softWrap: true,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Wrap(
                  children: [
                    Text(
                      tariffAndLimitsModel.subtitle,
                      style: Theme.of(context).textTheme.bodySmall,
                      softWrap: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
          const SizedBox(height: 0),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            color: MyAppColor.subtitle,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}