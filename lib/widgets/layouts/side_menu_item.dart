import 'package:flutter/material.dart';
import 'package:repentanceforumweb/helpers/responsiveness.dart';
import 'package:repentanceforumweb/widgets/layouts/vertical_menu_item.dart';

import 'horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function() onItemTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onItemTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomScreen(context)) return VerticalMenuItem(onItemTap: onItemTap, itemName: itemName,);
    return HorizontalMenuItem(onItemTap: onItemTap, itemName: itemName,);
  }
}
