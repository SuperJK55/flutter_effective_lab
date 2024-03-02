class ChipModel{
  static List<String> chiplist =
  [
    'Еда',
    'Саморазвитие',
    'Технологии',
    'Дом',
    'Досуг',
    'Забота о себе',
    'Наука',
  ];
  static Map<String, bool> getChipsMap (){
    return { for (var chip in chiplist) chip : false };
  } 
  static Map<String, bool> chips = getChipsMap();
}
