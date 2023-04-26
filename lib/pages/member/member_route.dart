import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repentanceforumweb/constants/styles.dart';
import 'package:repentanceforumweb/pages/member/widgets/church_members_table.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsiveness.dart';
import '../../widgets/church_data_table.dart';
import '../../widgets/layouts/custom_text.dart';

class MemberRoute extends StatelessWidget {
  const MemberRoute({Key? key}) : super(key: key);

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
        ],),
        
        Container(
          margin: const EdgeInsets.only(top: 100),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  //padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: lightGreyColor.withOpacity(.5)),
                    borderRadius: BorderRadius.circular(20),
                      //color: ligh
                      ),
                    child: TextFormField(decoration: const InputDecoration(
                      //label: Text('Search for member'),
                        border: InputBorder.none, // Remove default border
                        enabledBorder: InputBorder.none, // Remove border when field is enabled
                        focusedBorder: InputBorder.none, // Remove border when field is focused
                        //errorBorder: InputBorder.none, // Remove border when field has an error
                        disabledBorder: InputBorder.none, // Remove border when field is disabled
                        //contentPadding: EdgeInsets.zero, // Remove padding around the field
                      labelText: "Search for member",
                      prefixIcon: Icon(Icons.search)
                    ),)),
              ),
              const SizedBox(width: 20,),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(4),
                      color: Colors.indigo
                  ),
                  child: TextButton(onPressed: () {  }, child: CustomText(text: 'Add Member', color: lightColor,),),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Expanded(child: ChurchMembersTable())
      ],
    );
  }
}
