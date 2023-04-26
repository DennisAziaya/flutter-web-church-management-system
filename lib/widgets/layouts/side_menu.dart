import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repentanceforumweb/helpers/responsiveness.dart';
import 'package:repentanceforumweb/pages/authentication/authentication_route.dart';
import 'package:repentanceforumweb/routing/routes.dart';
import 'package:repentanceforumweb/widgets/layouts/side_menu_item.dart';
import '../../constants/controllers.dart';
import '../../constants/styles.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: lightColor,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(height: width/40,),
                     Padding(
                       padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Image.asset("assets/images/logo.png", width: 30,)),
                    Flexible(child: CustomText(
                      text: "Church Management System",
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: activeColor,
                    ),),
                    SizedBox(width: width/48,)
                ]),
                Divider(color: lightGreyColor.withOpacity(0.2),),
              ],),
          const SizedBox(height: 40,),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((item) => SideMenuItem(itemName: item.route == authenticationRoute ? "Log Out" : item.routeName,
              onItemTap: () {
                if(item.route == authenticationRoute){
                  //Get.offAll(() => const AuthenticationPage());
                  menuController.changeActiveItemTo(dashboardRouteDisplayName);
                  Get.offAllNamed(authenticationRoute);

                }
                if(!menuController.isActive(item.routeName)){
                  menuController.changeActiveItemTo(item.routeName);
                  if(ResponsiveWidget.isSmallScreen(context)) Get.back();
                  //Go to item name route
                  navigationController.navigateTo(item.route);
                }
              },

            )).toList(),)

        ],
      ),
    );
  }
}
