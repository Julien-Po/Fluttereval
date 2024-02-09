import 'package:dashboard/bar_data.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:dashboard/individual_bar.dart';
import 'package:dashboard/chart.dart';



class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});
  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        januarySteps: weeklySummary[0],
        februarySteps: weeklySummary[1],
        marchSteps: weeklySummary[2],
        aprilSteps: weeklySummary[3],
        maySteps: weeklySummary[4],
        juneSteps: weeklySummary[5],
        julySteps: weeklySummary[6],
        augustSteps: weeklySummary[7],
        septemberSteps: weeklySummary[8],
        octoberSteps: weeklySummary[9],
        novemberSteps: weeklySummary[10],
        decemberSteps: weeklySummary[11]
    );
    myBarData.initializeBarData();
    return BarChart(
  BarChartData(
    maxY : 10000,
    minY: 0,
    barGroups: myBarData.barData.map((data) => BarChartGroupData(x: data.x)).toList()
  )
    );
  }
}







