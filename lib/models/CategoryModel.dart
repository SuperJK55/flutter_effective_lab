class CategoryModel {
  const CategoryModel(
      {required this.imageName,
      required this.title,
      required this.subtitle,
      required this.cost,
      required this.period});

  final String imageName;
  final String title;
  final String subtitle;
  final String cost;
  final String period;

static List<CategoryModel> items =
  [
    CategoryModel(         
      imageName: 'lib/assets/images/sber_prime.png',
      title: 'СберПрайм',
      subtitle: 'Платёж 9 июля',
      cost: '199 ₽',
      period: 'месяц'),
     CategoryModel(         
       imageName: 'lib/assets/images/percent.png',
       title: 'Переводы',
       subtitle: 'Автопродление 21 августа',
       cost: '199 ₽',
       period: 'месяц'),
  ];

}
