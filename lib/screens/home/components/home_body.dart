import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/screens/home/components/famous_in_all.dart';
import 'package:fooddeliveryapp/screens/home/components/food_type.dart';
import 'package:fooddeliveryapp/screens/home/components/header_with_image.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithImage(size: size,),
          FoodType(),
          Divider(indent: defaultPadding, endIndent: defaultPadding,height: 50,),
          FamousInAll(size: size),
        ],
      ),
    );
  }
}
