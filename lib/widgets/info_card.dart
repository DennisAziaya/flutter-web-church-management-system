import 'package:flutter/material.dart';
import 'package:repentanceforumweb/constants/styles.dart';

import '../helpers/color_generator.dart';
import '../helpers/responsiveness.dart';

class InfoCard extends StatefulWidget {
  final String title;
  final String value;
  //final Color topColor;
  final bool isActive;
  final void Function() onCardTap;
  const InfoCard({Key? key, required this.title, required this.value, required this.isActive, required this.onCardTap,}) : super(key: key);

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {

  late UniqueColorGenerator colorGenerator;

  @override
  void initState() {
    super.initState();
    colorGenerator = UniqueColorGenerator();
  }



  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final Color topColor = colorGenerator.getNextUniqueColor();

    return InkWell(
      onTap: widget.onCardTap,
      child: Container(
        height: 136,
        width: ResponsiveWidget.isLargeScreen(context) ? width * 0.15 : width * 0.25 ,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,6),
              color: lightGreyColor.withOpacity(.1),
              blurRadius: 12
            )
          ]
        ),
        child: Column(
          children: [
            Row(children: [
              Expanded(child: Container(color: topColor ?? activeColor, height: 5,),)
            ],),
            Expanded(child: Container()),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(text: "${widget.title}\n", style: TextStyle(fontSize: 16, color: widget.isActive ? activeColor : lightGreyColor) ),
                  TextSpan(text: widget.value, style: TextStyle(fontSize: 40, color: widget.isActive ? activeColor : darkColor) ),
                ])),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
