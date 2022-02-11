import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';

class Header2 extends StatelessWidget {
  final Size size;

  const Header2({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
           // color: primaryColor,
            image: DecorationImage(
              image: AssetImage("assets/images/food_dish.png"),
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter
            ),

          ),
//          margin: EdgeInsets.only(bottom: size.height * 0.25),
          height: size.height * 0.55,
          width: size.width,

          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: defaultPadding * 1.5),

          child: Row(
            children: [
              FlatButton(onPressed: (){},
                color: Colors.white,
                shape:CircleBorder(),
                splashColor: Colors.white,

                  child: Icon(Icons.arrow_back),
              ),
              Spacer(),
              FlatButton(onPressed: (){},
                color: Colors.white,
                shape:CircleBorder(),
                splashColor: Colors.white,

                child: Icon(Icons.share),
              ),
            ],
          ),

        ),

      ],
    );
  }
}
