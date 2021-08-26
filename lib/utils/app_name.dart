import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  final double fontSize;
  const AppName({Key? key, required this.fontSize}) : super(key: key);

  static const colorizeColors = [
    Colors.purpleAccent,
    Colors.lightBlueAccent,
    Colors.pinkAccent,
    Colors.red,
  ];
  static const colorizeTextStyle = TextStyle(
    fontSize: 25.0,
    fontFamily: 'Romnea',
  );
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText(
          "ម៉ូយដុំភាពយន្ត",
          textStyle: colorizeTextStyle ,
          colors: colorizeColors,
        ),





      ],
    );
  }
}
