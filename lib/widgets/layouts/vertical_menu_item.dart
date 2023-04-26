import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/controllers.dart';
import '../../constants/styles.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function() onItemTap;
  const VerticalMenuItem({Key? key, required this.onItemTap, required this.itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onItemTap,
      onHover: (value){
        value
            ? menuController.onHover(itemName)
            : menuController.onHover('not hovering');
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName) ? lightGreyColor.withOpacity(.1) : Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
              maintainSize: true, maintainState: true, maintainAnimation: true,
              child: Container(width: 3, height: 72, color: blueColor,),
            ),
            //SizedBox(width:  _width/80,),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(padding: const EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if(!menuController.isActive(itemName))
                  Flexible(
                    child: CustomText(
                      text: itemName,
                      color : menuController.isHovering(itemName) ? darkColor : lightGreyColor,
                    ),
                  )
                else
                  Flexible(
                    child: CustomText(
                      text: itemName,
                      color : darkColor,
                      size : 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ],
            )),
          ],
        ),
      )),
    );
  }
}
