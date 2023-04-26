import 'package:flutter/material.dart';

class AttendanceDataChart{
  final DateTime dateTime;
  final int attendance;
  final int menAttendance;
  final int womenAttendance;
  final int childrenAttendance;
  AttendanceDataChart({required this.dateTime, required this.attendance, required this.menAttendance,required this.womenAttendance,required this.childrenAttendance,});
}

class AssetsDataChart{
  final String assetName;
  final int totalAsset;
  //final Color color;
  AssetsDataChart({required this.assetName, required this.totalAsset });
}

class ChartData{


  List<AttendanceDataChart> attendanceList = [
    AttendanceDataChart(dateTime: DateTime(2023, 1, 7), attendance: 1500, menAttendance : 550, womenAttendance : 450, childrenAttendance: 500 ),
    AttendanceDataChart(dateTime: DateTime(2023, 1, 15), attendance: 1650, menAttendance: 300, womenAttendance: 650, childrenAttendance: 720),
    AttendanceDataChart(dateTime: DateTime(2023, 1, 22), attendance: 1800, menAttendance : 700, womenAttendance : 500, childrenAttendance: 600),
    AttendanceDataChart(dateTime: DateTime(2023, 1, 19), attendance: 1650, menAttendance : 450, womenAttendance : 300, childrenAttendance: 900),
    AttendanceDataChart(dateTime: DateTime(2023, 2, 8), attendance: 1700, menAttendance : 750, womenAttendance : 450, childrenAttendance: 500),
    AttendanceDataChart(dateTime: DateTime(2023, 2, 15), attendance: 1400, menAttendance : 750, womenAttendance : 300, childrenAttendance: 350),
    AttendanceDataChart(dateTime: DateTime(2023, 2, 22), attendance: 1900, menAttendance : 750, womenAttendance : 500, childrenAttendance: 650),
    AttendanceDataChart(dateTime: DateTime(2023, 2, 30), attendance: 1500, menAttendance : 800, womenAttendance : 300, childrenAttendance: 400),
    AttendanceDataChart(dateTime: DateTime(2023, 3, 9), attendance: 1700, menAttendance : 650, womenAttendance : 550, childrenAttendance: 500),
    AttendanceDataChart(dateTime: DateTime(2023, 3, 17), attendance: 1650, menAttendance : 650, womenAttendance : 450, childrenAttendance: 550),
    AttendanceDataChart(dateTime: DateTime(2023, 3, 23), attendance: 1350, menAttendance : 300, womenAttendance : 550, childrenAttendance: 500),
    AttendanceDataChart(dateTime: DateTime(2023, 3, 31), attendance: 1650, menAttendance : 650, womenAttendance : 600, childrenAttendance: 500),
    AttendanceDataChart(dateTime: DateTime(2023, 4, 12), attendance: 1950, menAttendance : 950, womenAttendance : 450, childrenAttendance: 550),
    AttendanceDataChart(dateTime: DateTime(2023, 4, 15), attendance: 1750, menAttendance : 750, womenAttendance : 750, childrenAttendance: 400),
  ];

  List<AssetsDataChart> assetsList = [
    AssetsDataChart(assetName: 'Keyboard', totalAsset: 5),
    AssetsDataChart(assetName: 'Microphones', totalAsset: 50),
    AssetsDataChart(assetName: 'Chairs', totalAsset: 250),
    AssetsDataChart(assetName: 'Speakers', totalAsset: 12),
    // AssetsDataChart(assetName: 'Keyboard', totalAsset: 5, color : Colors.green),
    // AssetsDataChart(assetName: 'Microphones', totalAsset: 50, color : Colors.pink),
    // AssetsDataChart(assetName: 'Chairs', totalAsset: 250, color : Colors.indigo),
    // AssetsDataChart(assetName: 'Speakers', totalAsset: 12, color : Colors.teal),
  ];

}