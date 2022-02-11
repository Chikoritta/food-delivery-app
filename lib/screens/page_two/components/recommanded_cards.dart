import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constants.dart';

class RecommandedCards extends StatelessWidget {
  final String title;
  final String reviews, persons, time, dishType, image;
  final double price, stars;
  final Size size;

  const RecommandedCards({
    Key key,
    this.title,
    this.price,
    this.reviews,
    this.persons,
    this.time,
    this.dishType,
    this.stars,
    this.image,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          height: defaultPadding * 5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(defaultPadding / 2)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: defaultPadding / 2,
                  bottom: defaultPadding / 2,
                  left: defaultPadding / 2,
                ),
                width: size.width * 0.2,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(defaultPadding / 2),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SmoothStarRating(
                          allowHalfRating: true,
                          size: 10,
                          starCount: 5,
                          rating: stars,
                          isReadOnly: true,
                          borderColor: primaryColor,
                          color: primaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2, top: 2),
                          child: Text(
                            reviews,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8.5,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: defaultPadding / 3),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dinner_dining,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2, top: 5),
                            child: Text(
                              persons,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 8.5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: defaultPadding / 2),
                            child: Icon(
                              Icons.access_time,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2, top: 5),
                            child: Text(
                              time,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 8.5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: defaultPadding / 2),
                            child: Icon(
                              Icons.whatshot,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2, top: 5),
                            child: Text(
                              dishType,
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
              ),
            ],
          ),
        ),
        Positioned(
            right: defaultPadding / 2.5,
            bottom: defaultPadding / 1.5,
            child: Container(
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
                      text: "\n\$$price/-",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
