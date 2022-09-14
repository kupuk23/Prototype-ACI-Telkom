// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:database_test/classes/myColor.dart';
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
      const BarChartCategories(),
      Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 45),
          //color: Colors.red,
          width: 500,
          height: 365,
          // MediaQuery.of(context).size.width *
          // (1400 / MediaQuery.of(context).size.width),
          //color: Colors.grey.withOpacity(0.4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                width: 232,
              ),
              DottedLine(
                direction: Axis.vertical,
                lineLength: 300,
              ),
              SizedBox(
                width: 180,
              ),
              DottedLine(
                direction: Axis.vertical,
                lineLength: 300,
              ),
            ],
          ),
        ),
      ),
      Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          BarChartRow(values: dom[0], num: 1),
          BarChartRow(values: dom[1], num: 2),
          BarChartRow(values: dom[2], num: 3),
          BarChartRow(values: dom[3], num: 4),
          BarChartRow(values: dom[4], num: 5),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                //color: Color.fromARGB(50, 149, 149, 149),
              ),
              child: Legend(),
            ),
          )
        ],
      ),
    ]);
  }
}

class Legend extends StatelessWidget {
  const Legend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BoxLegend(scoreLevel: 0),
        SizedBox(
          width: 10,
        ),
        Text("Low"),
        SizedBox(
          width: 30,
        ),
        BoxLegend(scoreLevel: 1),
        SizedBox(
          width: 10,
        ),
        Text("Medium"),
        SizedBox(
          width: 30,
        ),
        BoxLegend(scoreLevel: 2),
        SizedBox(
          width: 10,
        ),
        Text("High"),
      ],
    );
  }
}

class BoxLegend extends StatelessWidget {
  const BoxLegend({
    Key? key,
    required int scoreLevel,
  })  : _scoreLevel = scoreLevel,
        super(key: key);

  final int _scoreLevel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: _scoreLevel == 0
              ? MyColors.darkBlue
              : _scoreLevel == 1
                  ? MyColors.yellow
                  : MyColors.green),
      height: 25,
      width: 25,
    );
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
          // color: Colors.red,
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
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(2, 0, 0, 0),
          height: 60,
          width: 2,
          color: Colors.black,
        ),
        Container(
          color: chooseColor(_value),
          height: 30,
          width: scoreToBarLength(_value).toDouble(),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 15,
          child: Text(_value.toString(),
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
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
        width: 530,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              width: 175,
            ),
            SelectableText(
              "Low",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 110,
            ),
            SelectableText(
              "Medium",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 120,
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
      return 45;
      break;
    case 2:
      return 90;
      break;
    case 3:
      return 135;
      break;
    case 4:
      return 180;
      break;
    case 5:
      return 225;
      break;
    case 6:
      return 270;
      break;
    case 7:
      return 315;
      break;
    case 8:
      return 360;
      break;
    case 9:
      return 405;
      break;
    case 10:
      return 450;
      break;
    default:
      return 0;
  }
}

Color? chooseColor(score) {
  if (score < 4)
    return MyColors.darkBlue;
  else if (score < 8)
    return MyColors.yellow;
  else
    return MyColors.green;
}
