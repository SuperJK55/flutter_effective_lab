import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/theme/MyAppColor.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: 300,
      actions: [
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          color: MyAppColor.icon,
          onPressed: () {},
        ),
      ],
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.close),
        color: MyAppColor.icon,
        onPressed: () {},
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 30),
                child: Image.asset("lib/assets/images/Photo.png"),
              ),
              Text(
                'Екатерина',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              
            ],
          ),
        ),
      ),
      bottom: const TabBar(
        tabs: [
          Tab(
            child: Text(
              'Профиль',
            ),
          ),
          Tab(
            child: Text(
              'Настройки',
            ),
          ),
        ],
      ),
    );
  }
}