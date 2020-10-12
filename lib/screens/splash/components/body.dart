import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';

import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        image: splashData[index]["image"],
                        text: splashData[index]["text"],
                      ))),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashData.length,
                          (index) => buildDot(index: index))),
                  Spacer(
                    flex: 3,
                  ),
                  DefaultButton(
                    text: "Continue",
                    press: () {},
                  ),
                  Spacer()
                ],
              ))
        ],
      ),
    );
  }

  AnimatedContainer buildDot({index: int}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: index == currentPage ? 20 : 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: currentPage == index ? kPrimaryColor : Colors.grey),
    );
  }
}
