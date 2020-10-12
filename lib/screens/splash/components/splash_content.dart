import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Text("TOKOTO",
          style: TextStyle(
              fontSize: getProportionateScreenHeight(36.0),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold)),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
      Spacer(
        flex: 2,
      ),
      Image.asset(
        image,
        width: getProportionateScreenWidth(265),
        height: getProportionateScreenWidth(235),
      )
    ]);
  }
}
