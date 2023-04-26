import 'package:flutter/material.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsiveness.dart';
import '../../widgets/layouts/custom_text.dart';

class ActivityRoute extends StatelessWidget {
  const ActivityRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Obx(() => Row(children: [
        //   Container(
        //     margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
        //     child: const CustomText(text: "Dashboard", size: 24, fontWeight: FontWeight.bold,),
        //   )
        // ],))
        Row(children: [
          Container(
            margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
            child: CustomText(text: menuController.activeItem.value, size: 24, fontWeight: FontWeight.bold,),
          )
        ],)
      ],
    );
  }
}
