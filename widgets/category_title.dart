import 'package:flutter/material.dart';
import 'package:yummy_pizza/designs/designs.dart';

class CategoryTitle extends StatelessWidget {
  final String title;

  CategoryTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: headingStyle,
            ),
          ],
        ),
      ),
    );
  }
}
