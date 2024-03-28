import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableText extends StatelessWidget {
  ReusableText(
      {super.key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontWeight});
  String text;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize ?? 15.0,
          color: color ?? Colors.black,
          fontFamily: 'primary',
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
