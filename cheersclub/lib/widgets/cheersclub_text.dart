import 'package:flutter/material.dart';

class CheersClubText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color? fontColor;
  final TextAlign alignment;
  final String font;
  const CheersClubText(
      {Key? key,
      this.text,
      this.fontSize,
      this.fontWeight = FontWeight.normal,
      this.fontColor,
      this.alignment = TextAlign.center,
      this.font = "Raleway"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
          color: fontColor,
          fontWeight: fontWeight,
          fontFamily: font,
          fontSize: fontSize),
      textAlign: alignment,
    );
  }
}
