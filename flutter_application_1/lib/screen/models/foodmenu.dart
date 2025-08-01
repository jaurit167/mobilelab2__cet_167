enum Foodpic {
  menu1(image: "assets/images/1.png"),
  menu2(image: "assets/images/2.png"),
  menu3(image: "assets/images/3.png"),;

  const Foodpic({required this.image});
  final String image;
}

class FoodMenu {
  final String name;
  final String type;
  final String component;
  final int price;
  final Foodpic foodpic;

  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
  });
}