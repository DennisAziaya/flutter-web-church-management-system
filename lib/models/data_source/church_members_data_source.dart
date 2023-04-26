import 'package:flutter/material.dart';

import '../members_data.dart';

class MembersDataTableSource extends DataTableSource {
  final List<MemberDataModel> _membersDataList;
  //get membersDataList => _membersDataList;

  MembersDataTableSource(this._membersDataList);


  bool _sortAscending = true;
  int _sortColumnIndex = 0;


  // void sortData(int columnIndex, bool ascending) {
  //   _sortColumnIndex = columnIndex;
  //   _sortAscending = ascending;
  //   notifyListeners();
  // }

  // void selectAll(bool isSelected) {
  //   for (var memberData in _membersDataList) {
  //     memberData.isSelected = isSelected;
  //   }
  //   notifyListeners();
  // }

  void sortData(int columnIndex, bool ascending) {
    _sortAscending = ascending;
    _sortColumnIndex = columnIndex;

    _membersDataList.sort((a, b) {
      if (columnIndex == 0) {
        return _sortAscending
            ? a.name.compareTo(b.name)
            : b.name.compareTo(a.name);
      } else if (columnIndex == 1) {
        return _sortAscending
            ? a.location.compareTo(b.location)
            : b.location.compareTo(a.location);
      } else if (columnIndex == 2) {
        return _sortAscending
            ? a.phone.compareTo(b.phone)
            : b.phone.compareTo(a.phone);
      } else {
        return 0;
      }
    });

    notifyListeners();
  }

  void selectAll(bool isSelected) {
    for (var memberData in _membersDataList) {
      memberData.isSelected = isSelected;
    }
    notifyListeners();
  }

  @override
  DataRow getRow(int index) {
    final myData = _membersDataList[index];
    return DataRow(cells: [
      DataCell(Text("${index + 1}")), // Display row number
      DataCell(Text(myData.name)),
      DataCell(Text(myData.location)),
      DataCell(Text(myData.phone)),
      DataCell(
          ListView(
            scrollDirection : Axis.horizontal,
            children: [
            Checkbox(
              value: myData.isSelected,
              onChanged: (value) {
                myData.isSelected = value!;
                notifyListeners();
              },
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.edit_note, color: Colors.teal,)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.delete_sweep_sharp, color: Colors.red,))
          ],)
      ),
      // Add more data cells as needed
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _membersDataList.length;

  @override
  int get selectedRowCount => 0;


}
