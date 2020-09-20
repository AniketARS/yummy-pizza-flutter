import 'package:flutter/material.dart';
import 'package:yummy_pizza/designs/designs.dart';
import 'package:yummy_pizza/screens/home_screens.dart';
import 'package:yummy_pizza/widgets/my_bottom_sheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yummy Pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: backColor,
      ),
      home: Scaffold(
        backgroundColor: backColor,
        body: HomeScreen(),
        bottomSheet: MyBottomSheet(),
      ),
    );
  }
}
