import 'package:flutter/material.dart';

class zvitatxt extends StatelessWidget {
  final String? value;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final double? letrspcg;
  const zvitatxt(
      {Key? key,
      this.value,
      this.color,
      this.size,
      this.fontWeight,
      this.letrspcg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        letterSpacing: letrspcg,
      ),
    );
  }
}
