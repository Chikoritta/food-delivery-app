import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/screens/home/components/famous_card.dart';

class FamousInAll extends StatelessWidget {
  final Size size;

  const FamousInAll({
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
                "Famous In All",
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
          FamousCard(
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
          FamousCard(
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
