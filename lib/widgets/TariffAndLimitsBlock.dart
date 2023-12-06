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
                  height: 6,
                ),
               
                    Text(
                      tariffAndLimitsModel.title,
                      style: Theme.of(context).textTheme.bodyMedium,
                      softWrap: true,
                    ),
                    Text(
                      tariffAndLimitsModel.subtitle,
                      style: Theme.of(context).textTheme.bodySmall,
                      softWrap: true,
                    ),
                  
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
          
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_right_sharp),
            color: MyAppColor.subtitle,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}