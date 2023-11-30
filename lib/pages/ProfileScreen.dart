import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/widgets/HeaderTextForAllBlock.dart';
import 'package:flutter_effective_lab/widgets/HorizontalCategoryList.dart';

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
          HeaderTextForAllBlock(
            title: 'Тарифы и лимиты',
            paragraph: 'Для операций в Сбербанк Онлайн'
            ),
          
         
        ],
      );
  }
}