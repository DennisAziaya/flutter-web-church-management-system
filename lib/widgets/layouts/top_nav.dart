import 'package:flutter/material.dart';
import 'package:repentanceforumweb/helpers/responsiveness.dart';

import '../../constants/styles.dart';
import 'custom_text.dart';

AppBar tobNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
  elevation: 0,
  backgroundColor: Colors.transparent,
  //backgroundColor: lightColor,
  iconTheme: IconThemeData(color: darkColor),
  leading: !ResponsiveWidget.isSmallScreen(context) ?
  Row(children: [
    Container(padding: const EdgeInsets.only(left: 14), child: Image.asset("assets/images/logo.png", width: 30,),)
  ],) : IconButton(onPressed: (){key.currentState?.openDrawer();}, icon: Icon(Icons.menu, color: darkColor,)),
  title: Row(
      children: [
    Visibility(
        visible: !ResponsiveWidget.isSmallScreen(context),
        child: CustomText(size: 19, fontWeight: FontWeight.w600, color: darkColor,)),
        Expanded(child: Container()),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: darkColor, size: 20,)),
        Badge(label: Text("3"), backgroundColor: Colors.indigo, child: Icon(Icons.notifications, color: darkColor.withOpacity(0.7),),),
        Container(width: 2, height: 22, color: lightGreyColor, margin: const EdgeInsets.only(left: 10),),
        const SizedBox(width: 24,),
        CustomText(text : "Mombasa Altar", color: lightGreyColor,),
        const SizedBox(width: 5,),
        Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            color: Colors.white
          ),
          child: CircleAvatar(backgroundColor: lightColor,child: Icon(Icons.person_outlined, color: darkColor,),), ),
  ]),
);