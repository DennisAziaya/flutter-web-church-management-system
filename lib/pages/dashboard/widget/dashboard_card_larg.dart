import 'dart:math';

import 'package:flutter/material.dart';
import '../../../widgets/info_card.dart';
import '../../member/widgets/church_members_table.dart';
import 'chart_widget.dart';

class DashBoardLargeScreen extends StatelessWidget {
  DashBoardLargeScreen({Key? key}) : super(key: key);


  // Create a list of colors
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 10,
          runSpacing: 20,
          children: [
            InfoCard(title: 'Members', value: '350', isActive: false, onCardTap: () {  },),
            //SizedBox(width:  width/64,),
            InfoCard(title: 'Home Cells', value: '20', isActive: false, onCardTap: () {  },),
            //SizedBox(width:  width/64,),
            InfoCard(title: 'Projects', value: '100', isActive: false, onCardTap: () {  }),
           //SizedBox(width:  width/64,),
            InfoCard(title: 'Assets', value: '30', isActive: false, onCardTap: () {  }),
            //SizedBox(width:  width/64,),
            InfoCard(title: 'Department', value: '5', isActive: true, onCardTap: () {  })
          ],
        ),
        const ChartWidget(),
        const SizedBox(height: 50,),
        //const Expanded(child: DashBoardDataTable())
        //ChurchDataTable(title: 'Recent Members', onTapDeleteItem: () {  }, onTapEditItem: () {  },)
        const ChurchMembersTable()

      ],
    );
  }
}




