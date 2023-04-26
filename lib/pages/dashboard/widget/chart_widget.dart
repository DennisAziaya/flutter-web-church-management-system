import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:ui' as ui;

import '../../../helpers/responsiveness.dart';
import '../../../models/chart_data.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {

  late TooltipBehavior _tooltipBehavior;

  @override
  void initState(){
    _tooltipBehavior =  TooltipBehavior(enable: true);
    super.initState();
  }

  var attendanceData = ChartData().attendanceList;
  var assetsData = ChartData().assetsList;


  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return ResponsiveWidget.isLargeScreen(context) ? Container(
      height: _height * 0.5,
      margin: const EdgeInsets.only(top: 80),
      padding: const EdgeInsets.only(top: 20),
      child: Row(children: [
        Expanded(
          flex: 3,
            child: SfCartesianChart(
                title: ChartTitle(text: 'Church Attendance Report', textStyle : const TextStyle(height: 32, fontWeight: FontWeight.w300, fontSize: 18)),
                legend: Legend(isVisible: true),
                // primaryXAxis: DateTimeAxis(
                //   interval: 0.5,
                // )
                //primaryXAxis: NumericAxis(),
                //primaryXAxis: CategoryAxis(),
                // primaryXAxis: DateTimeAxis(
                //   minimum: DateTime(2023, 1),
                //   maximum: DateTime(2023, 12),
                //   //interval: 0.5,
                // ),
                //primaryYAxis: LogarithmicAxis(),
                tooltipBehavior: _tooltipBehavior,
                primaryXAxis: DateTimeCategoryAxis(
                    minimum: DateTime(2023, 1),
                    maximum: DateTime(2023, 12),
                    dateFormat: DateFormat.yMMMd()
                ),
                series: <ChartSeries>[
                  // ColumnSeries, SplineSeries, FastLineSeries, SplineAreaSeries, AreaSeries
                  SplineAreaSeries<AttendanceDataChart, DateTime>(
                      name: 'Overall Attendance',
                      enableTooltip: true,
                      dataSource : attendanceData,
                      //splineType: SplineType.clamped,
                      // onCreateShader: (ShaderDetails details) {
                      //   return ui.Gradient.linear(details.rect.bottomLeft,
                      //   details.rect.bottomRight, const <Color>[
                      //   Color.fromRGBO(116, 182, 194, 1),
                      //   Color.fromRGBO(75, 189, 138, 1),
                      //   Color.fromRGBO(75, 189, 138, 1),
                      //   Color.fromRGBO(255, 186, 83, 1),
                      //   Color.fromRGBO(255, 186, 83, 1),
                      //   Color.fromRGBO(194, 110, 21, 1),
                      //   Color.fromRGBO(194, 110, 21, 1),
                      //   Color.fromRGBO(116, 182, 194, 1),
                      //   ], <double>[
                      //   0.1,
                      //   0.1,
                      //   0.4,
                      //   0.4,
                      //   0.7,
                      //   0.7,
                      //   0.9,
                      //   0.9
                      //   ]);
                      //   },
                      // xValueMapper: (ChartData, d) => d.dateTime,
                      // yValueMapper: (ChartData, d) => d.attendance,
                      xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                      yValueMapper: (AttendanceDataChart data, _) => data.attendance,
                      dataLabelSettings:const DataLabelSettings(isVisible : true)
                  ),
                  SplineAreaSeries<AttendanceDataChart, DateTime>(
                      name : "Men Attendance",
                      enableTooltip: true,
                      dataSource : attendanceData,
                      xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                      yValueMapper: (AttendanceDataChart data, _) => data.menAttendance,
                      //dataLabelSettings:const DataLabelSettings(isVisible : true),

                  ),
                  SplineAreaSeries<AttendanceDataChart, DateTime>(
                    name: "Women Attendance",
                    enableTooltip: true,
                    dataSource : attendanceData,
                    xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                    yValueMapper: (AttendanceDataChart data, _) => data.womenAttendance,
                    //dataLabelSettings:const DataLabelSettings(isVisible : true),

                  ),
                  SplineAreaSeries<AttendanceDataChart, DateTime>(
                    name: "Children Attendance",
                    enableTooltip: true,
                    dataSource : attendanceData,
                    xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                    yValueMapper: (AttendanceDataChart data, _) => data.childrenAttendance,
                    //dataLabelSettings:const DataLabelSettings(isVisible : true),

                  )
                ]
              // xValueMapper: (index) => data[index].dateTime,
              // yValueMapper: (index) => data[index].attendance,
            )
        ),
        Expanded(
          flex: 2,
          child: SfCircularChart(
              series: <CircularSeries>[
                PieSeries<AssetsDataChart, String >(
                    //enableSmartLabels: true,
                    dataSource : assetsData,
                    //pointColorMapper:(AssetsDataChart data,  _) => data.color,
                    xValueMapper: (AssetsDataChart data, _) => data.assetName,
                    yValueMapper: (AssetsDataChart data, _) => data.totalAsset,
                    dataLabelMapper: (AssetsDataChart data, _) => "${data.assetName} - ${data.totalAsset}",
                    explode: true,
                    explodeAll: true,
                    dataLabelSettings: const DataLabelSettings(
                      // Renders the data label
                        isVisible: true,
                        //overflowMode: OverflowMode.trim,
                        labelIntersectAction: LabelIntersectAction.shift,
                        connectorLineSettings: ConnectorLineSettings(
                            type: ConnectorType.curve, length: '25%'),
                        useSeriesColor: true
                        //labelPosition: ChartDataLabelPosition.inside
                    )

                    //explodeIndex: 2
                    //radius: '90%'
                )
              ]
          ),)
      ],),
    ) : Container(
      margin: const EdgeInsets.only(top: 80),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        SfCartesianChart(
            title: ChartTitle(text: 'Church Attendance Report'),
            legend: Legend(isVisible: true),
            // primaryXAxis: DateTimeAxis(
            //   interval: 0.5,
            // )
            //primaryXAxis: NumericAxis(),
            //primaryXAxis: CategoryAxis(),
            // primaryXAxis: DateTimeAxis(
            //   minimum: DateTime(2023, 1),
            //   maximum: DateTime(2023, 12),
            //   //interval: 0.5,
            // ),
            //primaryYAxis: LogarithmicAxis(),
            tooltipBehavior: _tooltipBehavior,
            primaryXAxis: DateTimeCategoryAxis(
                minimum: DateTime(2023, 1),
                maximum: DateTime(2023, 12),
                dateFormat: DateFormat.yMMMd()
            ),
            series: <ChartSeries>[
              // ColumnSeries, SplineSeries, FastLineSeries, SplineAreaSeries, AreaSeries
              SplineAreaSeries<AttendanceDataChart, DateTime>(
                  name: 'Overall Attendance',
                  enableTooltip: true,
                  dataSource : attendanceData,
                  //splineType: SplineType.clamped,
                  // onCreateShader: (ShaderDetails details) {
                  //   return ui.Gradient.linear(details.rect.bottomLeft,
                  //   details.rect.bottomRight, const <Color>[
                  //   Color.fromRGBO(116, 182, 194, 1),
                  //   Color.fromRGBO(75, 189, 138, 1),
                  //   Color.fromRGBO(75, 189, 138, 1),
                  //   Color.fromRGBO(255, 186, 83, 1),
                  //   Color.fromRGBO(255, 186, 83, 1),
                  //   Color.fromRGBO(194, 110, 21, 1),
                  //   Color.fromRGBO(194, 110, 21, 1),
                  //   Color.fromRGBO(116, 182, 194, 1),
                  //   ], <double>[
                  //   0.1,
                  //   0.1,
                  //   0.4,
                  //   0.4,
                  //   0.7,
                  //   0.7,
                  //   0.9,
                  //   0.9
                  //   ]);
                  //   },
                  // xValueMapper: (ChartData, d) => d.dateTime,
                  // yValueMapper: (ChartData, d) => d.attendance,
                  xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                  yValueMapper: (AttendanceDataChart data, _) => data.attendance,
                  dataLabelSettings:const DataLabelSettings(isVisible : true)
              ),
              SplineAreaSeries<AttendanceDataChart, DateTime>(
                name : "Men Attendance",
                enableTooltip: true,
                dataSource : attendanceData,
                xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                yValueMapper: (AttendanceDataChart data, _) => data.menAttendance,
                //dataLabelSettings:const DataLabelSettings(isVisible : true),

              ),
              SplineAreaSeries<AttendanceDataChart, DateTime>(
                name: "Women Attendance",
                enableTooltip: true,
                dataSource : attendanceData,
                xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                yValueMapper: (AttendanceDataChart data, _) => data.womenAttendance,
                //dataLabelSettings:const DataLabelSettings(isVisible : true),

              ),
              SplineAreaSeries<AttendanceDataChart, DateTime>(
                name: "Children Attendance",
                enableTooltip: true,
                dataSource : attendanceData,
                xValueMapper: (AttendanceDataChart data, _) => data.dateTime,
                yValueMapper: (AttendanceDataChart data, _) => data.childrenAttendance,
                //dataLabelSettings:const DataLabelSettings(isVisible : true),

              )
            ]
          // xValueMapper: (index) => data[index].dateTime,
          // yValueMapper: (index) => data[index].attendance,
        ),
        const SizedBox(height: 100,),
        SfCircularChart(
            series: <CircularSeries>[
              PieSeries<AssetsDataChart, String >(
                //enableSmartLabels: true,
                  dataSource : assetsData,
                  //pointColorMapper:(AssetsDataChart data,  _) => data.color,
                  xValueMapper: (AssetsDataChart data, _) => data.assetName,
                  yValueMapper: (AssetsDataChart data, _) => data.totalAsset,
                  dataLabelMapper: (AssetsDataChart data, _) => "${data.assetName} - ${data.totalAsset}",
                  explode: true,
                  explodeAll: true,
                  dataLabelSettings: const DataLabelSettings(
                    // Renders the data label
                      isVisible: true,
                      //overflowMode: OverflowMode.trim,
                      labelIntersectAction: LabelIntersectAction.shift,
                      connectorLineSettings: ConnectorLineSettings(
                          type: ConnectorType.curve, length: '25%'),
                      useSeriesColor: true
                    //labelPosition: ChartDataLabelPosition.inside
                  )

                //explodeIndex: 2
                //radius: '90%'
              )
            ]
        )
      ],),
    );
  }
}
