import 'package:flutter/material.dart';
import 'package:repentanceforumweb/constants/styles.dart';

import 'layouts/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final void Function() onCardTap;
  const InfoCardSmall({Key? key, required this.title, required this.value, required this.isActive, required this.onCardTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(
      onTap: onCardTap,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: isActive ? activeColor : lightGreyColor, width: 0.5),
        ),
        child: Row(children: [
          CustomText(text: title, size: 24, fontWeight: FontWeight.bold, color: isActive ? activeColor : lightGreyColor),
          Expanded(child: Container()),
          CustomText(text: value, size: 24, fontWeight: FontWeight.bold, color: isActive ? activeColor : lightGreyColor),
        ],),
      ),
    ));
  }
}
