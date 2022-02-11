import 'package:flutter/material.dart';

import 'header2.dart';
import 'image_details.dart';
import 'recommanded_meals.dart';


class Page2Body extends StatelessWidget {
  final Size size;
  const Page2Body({
    Key key,
    this.size,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
           Header2(size: size,),
          ImageDetails(size: size,),
          RecommandedMeals(size: size,),
        ],
      ),
    );
  }
}
