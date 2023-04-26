import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../models/collections/members.dart';
import '../../../models/data_source/church_members_data_source.dart';
import '../../../widgets/church_data_table.dart';
import '../../../widgets/layouts/custom_text.dart';

class ChurchMembersTable extends StatefulWidget {
  const ChurchMembersTable({Key? key}) : super(key: key);

  @override
  State<ChurchMembersTable> createState() => _ChurchMembersTableState();
}

class _ChurchMembersTableState extends State<ChurchMembersTable> {


  late MembersDataTableSource _membersDataTableSource;
  //late MembersDataRow _membersDataRow;
  int _sortColumnIndex = 0;
  bool _sortAscending = true;
  bool _selectAll = false; // Added variable to track select all state

  @override
  void initState() {
    super.initState();
    // Initialize the data source in the initState() function
    final MemberDataCollection memberDataCollection = MemberDataCollection();
    _membersDataTableSource = MembersDataTableSource(memberDataCollection.membersDataList );
  }

  void onSelectAll(bool? value){
      setState(() {
        // Update the select all state
        _selectAll = value ?? false;
        //_selectAll = value;
        _membersDataTableSource.selectAll(value!);
      });
    }

  void onEditItem(){}
  void onDeleteItem(){}


  @override
  Widget build(BuildContext context) {

    final List<DataColumn> tableColumns = [
      const DataColumn2(
        label: Text('No.'),
        size: ColumnSize.S,
      ),
      DataColumn(
        label: const CustomText(text: "Name", fontWeight: FontWeight.w700,),
        onSort: (int columnIndex, bool ascending) {
          setState(() {
            _sortColumnIndex = columnIndex;
            _sortAscending = ascending;
            _membersDataTableSource.sortData(columnIndex, ascending);
          });
        },
      ),
      const DataColumn(
        label: CustomText(text: "Location", fontWeight: FontWeight.w700,),
      ),
      const DataColumn(
        label: CustomText(text: "Phone", fontWeight: FontWeight.w700,),
        //numeric: true,
      ),
      const DataColumn2(
        label: CustomText(text: "Actions", fontWeight: FontWeight.w700,),
        size: ColumnSize.S,
      ),
    ];

    return ChurchDataTable(
      tableColumns: tableColumns,
      dataTableSource: _membersDataTableSource,
      sortAsc: _sortAscending,
      onSelectAllRows: onSelectAll,
      sortColumn: _sortColumnIndex,
      tableTitle: 'Church Members',
      tableSubTitle: 'Recent Members',
      onEditPressed:  onEditItem,
      onDeletePressed: onDeleteItem,);
  }
}
