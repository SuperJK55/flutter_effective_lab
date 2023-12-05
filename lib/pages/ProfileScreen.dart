import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/widgets/HeaderTextForAllBlock.dart';
import 'package:flutter_effective_lab/widgets/HorizontalCategoryList.dart';
import 'package:flutter_effective_lab/widgets/TariffAndLimitsBlock.dart';
import 'package:flutter_effective_lab/models/TariffAndLimitsModel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: const [
          HeaderTextForAllBlock(
            title: 'У вас подключено',
            paragraph: 'Подписки, автоплатежи и сервисы на которые вы подписались'
            ),
          HorizontalCategoryList(),
          SizedBox(height: 30,),
          HeaderTextForAllBlock(
            title: 'Тарифы и лимиты',
            paragraph: 'Для операций в Сбербанк Онлайн'
            ),
          SizedBox(height: 24,),
          TariffAndLimitsBlock(
            tariffAndLimitsModel: TariffAndLimitsModel(
                imageName: "lib/assets/images/day_limit.png",
                title: "Изменить суточный лимит",
                subtitle: "На платежи и переводы")),
          Padding(
            padding: EdgeInsets.only(left: 64),
            child: Divider(
              height: 2,
            ),
          ),
          TariffAndLimitsBlock(
            tariffAndLimitsModel: TariffAndLimitsModel(
                imageName: "lib/assets/images/percent_outline.png",
                title: "Переводы без комиссии",
                subtitle: "Показать остаток в этом месяце")),
          Padding(
            padding: EdgeInsets.only(left: 64),
            child: Divider(
              height: 2,
            ),
        ),
          TariffAndLimitsBlock(
                tariffAndLimitsModel: TariffAndLimitsModel(
                imageName: "lib/assets/images/about_limits.png",
                title: "Информация о тарифах и лимитах",
                subtitle: "")),
          SizedBox(height: 30,),
          HeaderTextForAllBlock(
            title: 'Интересы',
            paragraph:
              'Мы подбираем истории и предложения по темам, которые вам нравятся',),
         
        ],
      );
  }
}