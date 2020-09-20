import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_pizza/designs/designs.dart';

class MyBottomSheet extends StatefulWidget {
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: backColor),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _index = 0;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: _index == 0 ? Colors.white : Colors.grey[800],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _index = 1;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/chat.svg',
              color: _index == 1 ? Colors.white : Colors.grey[800],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _index = 2;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              color: _index == 2 ? Colors.white : Colors.grey[800],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _index = 3;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: _index == 3 ? Colors.white : Colors.grey[800],
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
