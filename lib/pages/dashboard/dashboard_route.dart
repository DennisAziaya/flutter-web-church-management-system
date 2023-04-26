import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repentanceforumweb/constants/controllers.dart';
import 'package:repentanceforumweb/pages/dashboard/widget/dashboard_card_larg.dart';
import 'package:repentanceforumweb/pages/dashboard/widget/dashboard_card_medium.dart';
import 'package:repentanceforumweb/pages/dashboard/widget/dashboard_card_small.dart';

import '../../helpers/responsiveness.dart';
import '../../widgets/layouts/custom_text.dart';

class DashBoardRoute extends StatelessWidget {
  const DashBoardRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Obx(() => Row(children: [
        //   Container(
        //     margin: EdgeInsets.onl y(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
        //     child: const CustomText(text: "Dashboard", size: 24, fontWeight: FontWeight.bold,),
        //   )
        // ],))
        Row(children: [
          Container(
            margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 12),
            child: CustomText(text: menuController.activeItem.value, size: 24, fontWeight: FontWeight.bold,),
          )
        ],),
        Expanded(child: ListView(children:  [
          ResponsiveWidget.isCustomScreen(context) || ResponsiveWidget.isMediumScreen(context)
              ? const DashBoardMediumScreen()
              : ResponsiveWidget.isLargeScreen(context)
              ? DashBoardLargeScreen() : const DashBoardSmallScreen()
        ],),)
      ],
    );
  }
}
