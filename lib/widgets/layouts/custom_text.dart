import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  const CustomText({Key? key, this.size, this.color, this.fontWeight, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text ?? "Repentance CMS ", style: TextStyle(fontSize: size ?? 16, color: color ?? Colors.black, fontWeight: fontWeight ?? FontWeight.normal),);
  }
}
