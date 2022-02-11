import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/page_two/components/recommanded_cards.dart';

import '../../../constants.dart';

class RecommandedMeals  extends StatelessWidget {
  final Size size;

  const RecommandedMeals({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Recommanded Meals",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 8,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          RecommandedCards(
            size: size,
            title: "Pasta Noodles",
            reviews: "5.5(415 Customers Reviews)",
            stars: 2.5,
            image: "assets/images/i1.png",
            persons: "2 Persons",
            time: "15 min",
            dishType: "Spicy Dish",
            price: 50,
          ),
          RecommandedCards(
            size: size,
            title: "Mix Fruits",
            reviews: "5.5(415 Customers Reviews)",
            stars: 5,
            image: "assets/images/fruit.png",
            persons: "5 Persons",
            time: "30 min",
            dishType: "Sweet Dish",
            price: 150,
          ),
        ],
      ),
    );
  }
}
