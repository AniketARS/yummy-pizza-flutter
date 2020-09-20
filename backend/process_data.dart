import 'dart:convert';

class Pizza {
  final String name;
  final double price;
  final String info;
  final String imgSrc;

  Pizza(this.name, this.price, this.info, this.imgSrc);

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      json["name"] as String,
      double.parse(json["price"].toString()),
      json["info"] as String,
      json["imgSrc"] as String,
    );
  }
}

List<Pizza> bestSellers = [];
List<Pizza> veg = [];
List<Pizza> nonVeg = [];

Map<String, dynamic> seperatePizzas(data) {
  Map<String, List<Pizza>> holder = {
    'bestSellers': [],
    'veg': [],
    'non_veg': []
  };
  Map<String, dynamic> res = json.decode(data);
  List<dynamic> temp = res['Bestsellers'];
  temp.forEach((element) {
    holder['bestSellers'].add(Pizza(
      element["name"],
      double.parse(element["price"].toString()),
      element["info"],
      element["imgSrc"],
    ));
  });
  temp = res['Non Veg Pizza'];
  temp.forEach((element) {
    holder['non_veg'].add(Pizza(
      element["name"],
      double.parse(element["price"].toString()),
      element["info"],
      element["imgSrc"],
    ));
  });
  temp = res['Veg Pizza'];
  temp.forEach((element) {
    holder['veg'].add(Pizza(
      element["name"],
      double.parse(element["price"].toString()),
      element["info"],
      element["imgSrc"],
    ));
  });
  return holder;
}

fillData(data) {
  bestSellers = data['bestSellers'];
  veg = data['veg'];
  nonVeg = data['non_veg'];
}
