import 'package:flutter/material.dart';
import 'package:yummy_pizza/backend/process_data.dart';
import 'package:yummy_pizza/designs/designs.dart';

class BestSellers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 340,
        decoration: BoxDecoration(color: backColor),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Sellers', style: headingStyle),
                  Text('View all', style: optionStyle),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: bestSellers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(color: backColor),
                      child: Column(
                        children: [
                          Container(
                            width: 260,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(bestSellers[index].imgSrc),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  bestSellers[index].name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 20,
                                    fontFamily: 'Futura',
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Starting from ₹${bestSellers[index].price}',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 16,
                                    fontFamily: 'Futura',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
