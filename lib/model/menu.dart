enum MenuCategory { KOREAN, CHINESE, JAPANESE, WESTERN }

class Menu {
  final String name;
  final MenuCategory category;

  const Menu({
    required this.name,
    required this.category,
  });
}


