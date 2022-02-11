import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/screens/page_two/page_two_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HeaderWithImage extends StatelessWidget {
  final Size size;

  const HeaderWithImage({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: size.height * 0.25),
          height: size.height * 0.3,
          width: size.width,
          color: primaryColor,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: defaultPadding * 1.5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Discover The\n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                        text: "Real Taste",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              FlatButton(
                shape: CircleBorder(),
                color: Colors.white54,
                splashColor: primaryColor.withOpacity(0.4),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: defaultPadding,
          right: defaultPadding,
          bottom: 0,
          child: Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pasta.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(defaultPadding),
            ),
          ),
        ),
        Positioned(
          left: defaultPadding * 1.5,
          right: defaultPadding * 1.5,
          bottom: defaultPadding / 2,
          child: Container(
            height: size.height * 0.107,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(defaultPadding / 2)),
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Pasta Masla",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8.0,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmoothStarRating(
                            allowHalfRating: true,
                            size: 10,
                            starCount: 5,
                            borderColor: primaryColor,
                            color: primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2, top: 2),
                            child: Text(
                              "5.5(415 Customers Reviews)",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8.5,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: defaultPadding / 3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dinner_dining,
                              color: Colors.grey,
                              size: 15,
                            ),

                            //  Image (image :AssetImage("assets/images/pasta.png")),

                            Padding(
                              padding: const EdgeInsets.only(left: 2, top: 5),
                              child: Text(
                                "5 Persons",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: defaultPadding / 2),
                              child: Icon(
                                Icons.access_time,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ),

                            //  Image (image :AssetImage("assets/images/pasta.png")),

                            Padding(
                              padding: const EdgeInsets.only(left: 2, top: 5),
                              child: Text(
                                "45 min",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: defaultPadding / 2),
                              child: Icon(
                                Icons.whatshot,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ),

                            //  Image (image :AssetImage("assets/images/pasta.png")),

                            Padding(
                              padding: const EdgeInsets.only(left: 2, top: 5),
                              child: Text(
                                "Spicy Dish",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: defaultPadding / 2),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Price",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 8.5,
                            ),
                          ),
                          TextSpan(
                            text: "\n\$250/-",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            left: defaultPadding * 12,
            right: defaultPadding * 2,
            bottom: 18,
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(defaultPadding / 2)),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                splashColor: primaryColor.withOpacity(0.4),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2Screen()),);
                },
                child: Text(
                  "Order Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
