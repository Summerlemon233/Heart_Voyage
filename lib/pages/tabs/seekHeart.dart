import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/heart/anxiety_test.dart';
import 'package:heart_voyage/system/sign/sign.dart';
import 'package:heart_voyage/system/userdata.dart';

class AppColors {
  static const Color primary = contentColorCyan;
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF50E4FF);
}

class seekHeart extends StatefulWidget {
  const seekHeart({Key? key}) : super(key: key);

  @override
  State<seekHeart> createState() => _seekHeartState();
}

class _seekHeartState extends State<seekHeart> {
  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 0, MediaQuery.of(context).size.width * 0.1, 0),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
                foregroundColor: MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
                minimumSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.1)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(color: Color.fromRGBO(90, 66, 53, 1),width: 2.0),
                  ),
                ),
              ),
              onPressed: () {
                Get.to(sign());
              },
              child: Text("每日打卡",
                style: TextStyle(
                  fontSize: 32,
                ),)),
        ),

        SizedBox(
          height: 0.03 * MediaQuery.of(context).size.height,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 0, MediaQuery.of(context).size.width * 0.1, 0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
              foregroundColor: MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
              minimumSize: MaterialStateProperty.all(Size(
                  MediaQuery.of(context).size.width * 0.8,
                  MediaQuery.of(context).size.height * 0.1)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(color: Color.fromRGBO(90, 66, 53, 1),width: 2.0),
                ),
              ),
            ),
            onPressed: () {
              Get.to(anxiety_test());
            },
            child: Text("量表",
              style: TextStyle(
                fontSize: 32,
              ),))),
        SizedBox(
          height: 0.1 * MediaQuery.of(context).size.height,
        ),
        Container(
          child: Center(
            child: Text("情绪变化曲线",style: TextStyle(fontSize: 20),),
          ),
        ),
        SizedBox(
          height: 0.02 * MediaQuery.of(context).size.height,
        ),
        Container(
            height: 0.35 * MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 0, MediaQuery.of(context).size.width * 0.1, 0),
            child: LineChart(
              mainData(),
            ),
          ),
        SizedBox(height: 40,),
      ],
    ));
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('第0周', style: TextStyle(fontFamily: 'Helvetica_Neue'));
        break;
      case 1:
        text = const Text('第1周', style: TextStyle(fontFamily: 'Helvetica_Neue'));
        break;
      case 2:
        text = const Text('第2周', style: TextStyle(fontFamily: 'Helvetica_Neue'));
        break;
      case 3:
        text = const Text('第3周', style: TextStyle(fontFamily: 'Helvetica_Neue'));
        break;
      case 4:
        text = const Text('时间（周）', style: TextStyle(fontFamily: 'Helvetica_Neue'));
        break;
      default:
        text = const Text('', style: TextStyle(fontFamily: 'Helvetica_Neue'));
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 8:
        text = '8';
        break;
      case 16:
        text = '16';
        break;
      case 24:
        text = '24';
        break;
      case 30:
        text = '焦虑值';
        break;
      default:
        return Container();
    }
    return Text(text, style: TextStyle(fontFamily: 'Helvetica_Neue'), textAlign: TextAlign.center);
  }

  LineChartData mainData() {
    return LineChartData(
      clipData: FlClipData.horizontal(),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(

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
            interval: 1,
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
      maxX: 4,
      minY: 0,
      maxY: 30,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, basicData['moodScore'].toDouble()),
            FlSpot(1, basicData['moodScore'].toDouble()),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
