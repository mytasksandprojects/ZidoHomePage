import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  static const primaryColor = Color(0xFF496EE3);
  static const homeHeaderCard =  Color(0xFF25C092);
  static const homeHeaderCardButton =  Color(0xFFFFD022);
  static const latestItemsCardBackground =  Color(0xFFF1F4FD);
  static const latestItemsCardTimer =  Color(0xff686C73);
  static const latestItemsCardSecondButton =  Color(0xff25C092);

  static LinearGradient mainGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops:const [0.2, 1],
    colors: [
      Colors.black.withOpacity(0.9),
      Colors.white.withOpacity(0.2)
    ],
  );


}
