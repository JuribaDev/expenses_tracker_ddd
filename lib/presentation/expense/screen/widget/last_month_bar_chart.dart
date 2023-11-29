// ignore_for_file: must_be_immutable

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LastMonthExpensesBarChart extends StatelessWidget {
  LastMonthExpensesBarChart({super.key});

  BarData barData = BarData(totalFirstWeek: 100, totalSecondWeek: 200, totalThirdWeek: 135, totalFourthWeek: 10000);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Last Month Expenses: SAR ${barData.totalY}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: BarChart(
            BarChartData(
              maxY: barData.totalY + (barData.totalY * 0.2),
              minY: 0,
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                show: true,
                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles)),
              ),
              barGroups: barData.barData
                  .map(
                    (data) => BarChartGroupData(
                      x: data.x,
                      barRods: [
                        BarChartRodData(
                          toY: data.y,
                          color: Colors.grey[200],
                          width: 25,
                          borderRadius: BorderRadius.circular(4),
                          backDrawRodData: BackgroundBarChartRodData(
                            show: true,
                            toY: 100,
                            color: Colors.grey[200],
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget getBottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 12);
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('1st week', style: style);
      case 2:
        text = const Text('2nd week', style: style);
      case 3:
        text = const Text('3rd week', style: style);
      case 4:
        text = const Text('4th week', style: style);

      default:
        text = const Text('');
    }
    return SideTitleWidget(axisSide: meta.axisSide, child: text);
  }
}

class Bar {
  Bar(this.x, this.y);

  final int x;
  final double y;
}

class BarData {
  BarData({
    required this.totalFirstWeek,
    required this.totalSecondWeek,
    required this.totalThirdWeek,
    required this.totalFourthWeek,
  });

  final double totalFirstWeek;
  final double totalSecondWeek;
  final double totalThirdWeek;
  final double totalFourthWeek;

  List<Bar> get barData => [
        Bar(1, totalFirstWeek),
        Bar(2, totalSecondWeek),
        Bar(3, totalThirdWeek),
        Bar(4, totalFourthWeek),
      ];

  double get totalY => totalFirstWeek + totalSecondWeek + totalThirdWeek + totalFourthWeek;
}
