import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_pizza/designs/designs.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Futura',
              ),
              decoration: InputDecoration(
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 18,
                  minWidth: 40,
                ),
                prefixIcon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 18,
                  color: Colors.white60,
                ),
                hintText: 'Search Pizza',
                hintMaxLines: 1,
                hintStyle: TextStyle(
                  color: Colors.white60,
                  fontSize: 15,
                  fontFamily: 'Futura',
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 35,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white24,
            ),
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
