import 'package:flutter/material.dart';

import '../../../widgets/info_card.dart';
import 'chart_widget.dart';
import 'dashboard_card_larg.dart';

class DashBoardMediumScreen extends StatelessWidget {
  const DashBoardMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashBoardLargeScreen();
    // return Wrap(
    //   //direction: Axis.horizontal,
    //   spacing: 10,
    //   runSpacing: 20,
    //   //mainAxisSize: MainAxisSize.min,
    //   // children: [
    //   //   Row(
    //   //     children: [
    //   //       InfoCard(title: 'Church Members', value: '350', topColor: Colors.orange, isActive: false, onCardTap: () {  },),
    //   //       SizedBox(width:  width/64,),
    //   //       InfoCard(title: 'Home Cells', value: '20', topColor: Colors.indigo, isActive: false, onCardTap: () {  },),
    //   //     ],
    //   //   ),
    //   //   const SizedBox(height: 16,),
    //   //   Row(
    //   //     children: [
    //   //       InfoCard(title: 'Church Projects', value: '100', topColor: Colors.purple, isActive: false, onCardTap: () {  },),
    //   //       SizedBox(width:  width/64,),
    //   //       InfoCard(title: 'Church Assets', value: '30', topColor: Colors.red, isActive: false, onCardTap: () {  },)
    //   //     ],
    //   //   ),
    //   //   const ChartWidget()
    //   // ],
    //   children: [
    //     InfoCard(title: 'Church Members', value: '350', topColor: Colors.orange, isActive: false, onCardTap: () {  },),
    //     InfoCard(title: 'Home Cells', value: '20', topColor: Colors.indigo, isActive: false, onCardTap: () {  },),
    //     InfoCard(title: 'Church Projects', value: '100', topColor: Colors.purple, isActive: false, onCardTap: () {  },),
    //     InfoCard(title: 'Church Assets', value: '30', topColor: Colors.red, isActive: false, onCardTap: () {  },),
    //     InfoCard(title: 'Departments', value: '3', topColor: Colors.green, isActive: false, onCardTap: () {  },),
    //     //const ChartWidget()
    //   ],
    // );
  }
}
