import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';

class FoodType extends StatelessWidget {
  final Size size;

  const FoodType({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FoodTypeItem(
            iconData: Icons.cake_outlined,
            title: "Sweet Dishs",
          ),
          FoodTypeItem(
            iconData: Icons.fastfood_outlined,
            title: "Fast Food",
          ),
          FoodTypeItem(
            iconData:
                IconData(0xe800, fontFamily: "MyFlutterApp", fontPackage: null),
            title: "Beverages",
          ),
          FoodTypeItem(
            image: "assets/images/sea.png",
            title: "Sea Food",
          ),
        ],
      ),
    );
  }
}

class FoodTypeItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String image;

  const FoodTypeItem({
    Key key,
    this.iconData,
    this.title,
    this.image = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding / 4,
        right: defaultPadding / 4,
        top: defaultPadding / 2,
        bottom: defaultPadding / 5,
      ),
      child: FlatButton(
        onPressed: () {},
        splashColor: primaryColor.withOpacity(0.5),
        shape: CircleBorder(),
        child: Column(
          children: [
            image.isEmpty
                ? Icon(iconData, color: Colors.black87)
                : Image(
                    image: AssetImage("assets/images/sea.png"),
                    width: 25,
                    height: 25,
                  ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,),
            )
          ],
        ),
      ),
    );
  }
}
