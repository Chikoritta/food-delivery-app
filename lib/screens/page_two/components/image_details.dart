import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ImageDetails extends StatelessWidget {
  final Size size;

  const ImageDetails({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
      Container(
        height: size.height * 0.30,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultPadding / 2)),
        margin: EdgeInsets.only(top: 3 , right: defaultPadding /2 , left: defaultPadding /2),
        child: Padding(
          padding: const EdgeInsets.only(right: defaultPadding  , top: defaultPadding / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "The Pasta Masla",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
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
                          padding:
                              const EdgeInsets.only(top: defaultPadding / 3),
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
                                padding:
                                    const EdgeInsets.only(left: 2, top: 5),
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
                                padding:
                                    const EdgeInsets.only(left: 2, top: 5),
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
                                padding:
                                    const EdgeInsets.only(left: 2, top: 5),
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
                  ],
                ),
              ),
              Divider(
                indent: defaultPadding,
                endIndent: defaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: defaultPadding,
                    left: defaultPadding,
                    top: defaultPadding / 2),
                child: Container(
                  width: size.height * defaultPadding,
                  height: defaultPadding * 2,
                  child: FlatButton(
                    onPressed: () {},
                    splashColor: Colors.white,
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
          right: defaultPadding ,
          bottom: defaultPadding * 4,
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding * 2),
            child: Container(

              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "\n\$300/-",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ))
    ]
    );
  }
}
