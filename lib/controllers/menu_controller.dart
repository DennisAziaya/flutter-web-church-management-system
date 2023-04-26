import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repentanceforumweb/constants/styles.dart';

import '../routing/routes.dart';

class AppMenuController extends GetxController {
  static AppMenuController instance = Get.find();

  var activeItem = dashboardRouteDisplayName.obs;
  var hoverItem = "".obs;

  void changeActiveItemTo(String itemName){
    activeItem.value = itemName;
  }

  bool isActive(String itemName) => activeItem.value == itemName;

  void onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  bool isHovering(String itemName) => activeItem.value == itemName;



  Widget returnIconFor(String itemName){
    switch(itemName){
      case authenticationRouteDisplayName:
        return _customIcon(Icons.login, itemName);
      case dashboardRouteDisplayName:
        return _customIcon(Icons.trending_up_sharp, itemName);
      case memberRouteDisplayName:
        return _customIcon(Icons.supervised_user_circle, itemName);
      case activityRouteDisplayName:
        return _customIcon(Icons.local_activity, itemName);
      case settingsRouteDisplayName:
        return _customIcon(Icons.settings, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }


  // Change Icon Hover and Active State
  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)) return Icon(icon, size: 22, color: darkColor,);
    return Icon(icon, color: isHovering(itemName) ? darkColor : lightGreyColor);
  }



}
