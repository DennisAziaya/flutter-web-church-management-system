import 'package:flutter/material.dart';

import '../../../widgets/info_card.dart';
import '../../../widgets/info_card_small.dart';
import 'chart_widget.dart';

class DashBoardSmallScreen extends StatelessWidget {
  const DashBoardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double width = MediaQuery.of(context).size.width;
    return Container(
      //height: 400,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          InfoCardSmall(title: 'Church Members', value: '350', isActive: true, onCardTap: () {  },),
          const SizedBox(height:  16,),
          InfoCardSmall(title: 'Home Cells', value: '20', isActive: false, onCardTap: () {  },),
          const SizedBox(height:  16,),
          InfoCardSmall(title: 'Church Projects', value: '100', isActive: false, onCardTap: () {  },),
          const SizedBox(height:  16,),
          InfoCardSmall(title: 'Department', value: '5', isActive: false, onCardTap: () {  },),
          const SizedBox(height:  16,),
          InfoCardSmall(title: 'Church Assets', value: '30', isActive: false, onCardTap: () {  },),
          //const ChartWidget()
        ],
      ),
    );
  }
}
