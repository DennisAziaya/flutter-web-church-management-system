import 'package:flutter/material.dart';


class MembersDataRow {
  //final Function() onSelectChanged;
   DataRow getMembersRow(myData,int index, onSelectChangedNotify) {
    //final myData = dataList[index];
    return DataRow(cells: [
      DataCell(Text("${index + 1}")), // Display row number
      DataCell(Text(myData.name)),
      DataCell(Text(myData.location)),
      DataCell(Text(myData.phone)),
      DataCell(
        Row(children: [
          Checkbox(
            value: myData.isSelected,
            onChanged: (value) {
              myData.isSelected = value!;
              onSelectChangedNotify();
            },

          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.edit_note, color: Colors.teal,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.delete_sweep_sharp, color: Colors.red,))
        ],)
      ),
      // Add more data cells as needed
    ]);
  }

   // Add the notifyListeners() method to notify listeners of changes


}