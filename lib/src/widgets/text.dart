import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? size;
  Color? color = Colors.black;
  final String? font;
  final FontWeight? fontWeight;

   MyText({
    super.key,
    this.size,
    required this.text,
    this.color,
    this.fontWeight,
    this.font,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: font,
        fontWeight: fontWeight,
      ),
    );
  }
}
