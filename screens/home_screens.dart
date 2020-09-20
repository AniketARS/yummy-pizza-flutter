import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yummy_pizza/backend/process_data.dart';
import 'package:yummy_pizza/designs/designs.dart';
import 'package:yummy_pizza/widgets/best_sellers.dart';
import 'package:yummy_pizza/widgets/category_title.dart';
import 'package:yummy_pizza/widgets/my_app_bar.dart';
import 'package:yummy_pizza/widgets/pizza_menu.dart';
import 'package:yummy_pizza/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _futureJson;

  _loadJson() {
    return rootBundle
        .loadString('assets/pizzas.json')
        .then((value) => compute(seperatePizzas, value.toString()));
  }

  @override
  void initState() {
    super.initState();
    _futureJson = _loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureJson,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          fillData(snapshot.data);
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                titleSpacing: 0.0,
                expandedHeight: 140,
                flexibleSpace: FlexibleSpaceBar(
                  title: SearchBar(),
                  titlePadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                title: MyAppBar(),
                floating: true,
                snap: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == 0)
                      return BestSellers();
                    else if (index == 1)
                      return CategoryTitle('Veg Pizza');
                    else if (index > 1 && index < veg.length + 2)
                      return PizzaMenu(
                        veg[index - 2].name,
                        veg[index - 2].price,
                        veg[index - 2].imgSrc,
                      );
                    else if (index == veg.length + 2)
                      return CategoryTitle('Non Veg Pizza');
                    else if (index > veg.length + 2 &&
                        index < veg.length + nonVeg.length + 2) {
                      int i = index - veg.length - 3;
                      return PizzaMenu(
                        nonVeg[i].name,
                        nonVeg[i].price,
                        nonVeg[i].imgSrc,
                      );
                    } else
                      return Container(
                        height: 100,
                        color: backColor,
                      );
                  },
                  childCount: (3 + veg.length + nonVeg.length),
                ),
              ),
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
