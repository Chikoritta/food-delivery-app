import 'package:flutter/material.dart';

import 'components/page_two_body.dart';

class Page2Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
     body: Page2Body(size: size),

    );
  }
}
