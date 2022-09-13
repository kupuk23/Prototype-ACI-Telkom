import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../results_page.dart';

class BarChart extends StatelessWidget {
  const BarChart({
    Key? key,
    required this.dom,
  }) : super(key: key);

  final List<int> dom;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BarChartCategories(),
      Center(
        child: SizedBox(
          width: 500,
          height: 365,
          // MediaQuery.of(context).size.width *
          // (1400 / MediaQuery.of(context).size.width),
          //color: Colors.grey.withOpacity(0.4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                width: 246,
              ),
              DottedLine(
                direction: Axis.vertical,
                lineLength: 335,
              ),
              SizedBox(
                width: 150,
              ),
              DottedLine(
                direction: Axis.vertical,
                lineLength: 335,
              ),
            ],
          ),
        ),
      ),
      Column(
        children: [
          SizedBox(
            height: 20,
          ),
          BarChartRow(values: dom[0], num: 1),
          BarChartRow(values: dom[1], num: 2),
          BarChartRow(values: dom[2], num: 3),
          BarChartRow(values: dom[3], num: 4),
          BarChartRow(values: dom[4], num: 5),
        ],
      ),
    ]);
  }
}

class BarChartRow extends StatelessWidget {
  BarChartRow({
    Key? key,
    required int values,
    required this.num,
  })  : _value = values,
        super(key: key);

  final int _value;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 160,
          child: SelectableText(
            num == 1
                ? "Agreeableness"
                : num == 2
                    ? "Conscientiousness"
                    : num == 3
                        ? "Emotional Stability"
                        : num == 4
                            ? "Extraversion"
                            : "Open Mindedness",
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
          height: 70,
          width: 2,
          color: Colors.black,
        ),
        Container(
          color: chooseColor(_value),
          height: 30,
          width: scoreToBarLength(_value).toDouble(),
        ),
        SizedBox(
          width: 10,
        ),
        SelectableText(
          _value.toString(),
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 30,
          width: 450 - scoreToBarLength(_value).toDouble(),
        ),
      ],
    );
  }
}

class BarChartCategories extends StatelessWidget {
  const BarChartCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 20,
        width: 500,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              width: 165,
            ),
            SelectableText(
              "Low",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 100,
            ),
            SelectableText(
              "Medium",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 100,
            ),
            SelectableText(
              "High",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

int scoreToBarLength(int score) {
  switch (score) {
    case 1:
      return 50;
      break;
    case 2:
      return 100;
      break;
    case 3:
      return 150;
      break;
    case 4:
      return 200;
      break;
    case 5:
      return 250;
      break;
    case 6:
      return 300;
      break;
    case 7:
      return 350;
      break;
    case 8:
      return 400;
      break;
    case 9:
      return 450;
      break;
    case 10:
      return 500;
      break;
    default:
      return 0;
  }
}

Color? chooseColor(score) {
  if (score < 4)
    return Colors.red[200];
  else if (score < 7)
    return Colors.yellow[300];
  else
    return Colors.green[300];
}
