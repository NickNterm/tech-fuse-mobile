import 'package:app/features/home/domain/entities/general_sensor.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = const Text('MAR', style: style);
      break;
    case 5:
      text = const Text('JUN', style: style);
      break;
    case 8:
      text = const Text('SEP', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }

  return SideTitleWidget(
    meta: meta,
    child: text,
  );
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  return Text(
    value.toString(),
    style: style,
    textAlign: TextAlign.left,
  );
}

LineChartData mainData(BuildContext context, GeneralSensor sensor) {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return const FlLine(
          color: Colors.grey,
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return const FlLine(
          color: Colors.grey,
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          getTitlesWidget: bottomTitleWidgets,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 4,
          getTitlesWidget: leftTitleWidgets,
          reservedSize: 42,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border.all(color: const Color(0xff37434d)),
    ),
    minX: 0,
    maxX: 10,
    minY: 0,
    maxY: 20,
    extraLinesData: ExtraLinesData(
      horizontalLines: [
        HorizontalLine(
          y: sensor.max,
          color: Colors.red,
          strokeWidth: 3,
          dashArray: [20, 10],
        ),
        HorizontalLine(
          y: sensor.min,
          color: Colors.red,
          strokeWidth: 3,
          dashArray: [20, 10],
        ),
      ],
    ),
    lineBarsData: [
      LineChartBarData(
        spots: sensor.values
            .map(
              (value) => FlSpot(
                sensor.values.indexOf(value).toDouble(),
                double.parse(value.value['value']),
              ),
            )
            .toList(),
        isCurved: true,
        color: context.palette.primaryColor,
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: const FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          color: context.palette.primaryColor.withAlpha(150),
        ),
      ),
    ],
  );
}
