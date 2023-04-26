import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:repentanceforumweb/constants/styles.dart';
import 'package:repentanceforumweb/widgets/layouts/custom_text.dart';


class ChurchDataTable extends StatelessWidget {

  final List<DataColumn> tableColumns;
  final DataTableSource dataTableSource;
  final int? sortColumn;
  final bool sortAsc;
  final void Function(bool?) onSelectAllRows;
  final void Function() onEditPressed;
  final void Function() onDeletePressed;
  final String tableTitle;
  final String tableSubTitle;

  const ChurchDataTable({Key? key, required this.tableColumns, required this.dataTableSource, required this.sortColumn, required this.sortAsc, required this.onSelectAllRows, required this.tableTitle, required this.tableSubTitle, required this.onEditPressed, required this.onDeletePressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      margin: const EdgeInsets.only(bottom: 36.0),
      height: MediaQuery.of(context).size.height*0.8,
      decoration : BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0,6),
                color: lightGreyColor.withOpacity(.1),
                blurRadius: 12
            )
          ],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: lightGreyColor, width: .5)
      ),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: tableTitle, size: 20, fontWeight: FontWeight.bold, color: lightGreyColor),
          const SizedBox(height: 10,),
          Expanded(
            child: PaginatedDataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              header: Text(tableSubTitle),
              columns: tableColumns,

              // rows: List<DataRow>.generate(
              //     10,
              //         (index) => DataRow(cells: [
              //       const DataCell(Text("1")),
              //       DataCell(Text("Dennis K")),
              //       DataCell(Text("Mombasa")),
              //       DataCell(Text("Shimo la Tewa")),
              //       DataCell(Text("0734657687")),
              //       DataCell(Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children:  [
              //           IconButton(onPressed: (){}, icon: const Icon(Icons.edit_note, color: Colors.teal,)),
              //           IconButton(onPressed: (){}, icon: const Icon(Icons.delete_sweep_sharp, color: Colors.red,))
              //       //InkWell(onTap : (){}, child: CustomText(text: "Edit", color: Colors.teal,)),
              //       //InkWell(onTap : (){}, child: CustomText(text: "Edit", color: Colors.teal,)),
              //       //InkWell(onTap : (){}, child: CustomText(text: "Edit", color: Colors.teal,)),
              //       //InkWell(onTap : (){}, child: CustomText(text: "Delete", color: Colors.red,)),
              //         ],
              //       )),
              //     ])),
              source: dataTableSource,
              actions: [
                // Add action buttons as needed
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    // Implement refresh logic
                  },
                ),
                // IconButton(onPressed: onEditPressed, icon: const Icon(Icons.edit_note, color: Colors.teal,)),
                IconButton(onPressed: onDeletePressed, icon: const Icon(Icons.delete_sweep_sharp, color: Colors.red,)),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: .5, color: Colors.red),
                        color: Colors.red.withOpacity(.2)
                    ),
                    child:  TextButton(onPressed: () {  }, child: const Text("Delete Selected"),))
              ],
              sortColumnIndex: sortColumn,
              sortAscending: sortAsc,
              onSelectAll: onSelectAllRows,
            ),
          ),
        ],
      ),
    );
  }
}
