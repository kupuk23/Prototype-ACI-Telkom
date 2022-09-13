import 'package:database_test/results_page.dart';
import 'package:flutter/material.dart';

class FasetChart extends StatelessWidget {
  const FasetChart({
    Key? key,
    required this.fasetScore,
  }) : super(key: key);

  final List<int> fasetScore;

  @override
  Widget build(BuildContext context) {
    Color greenTheme = Color.fromARGB(255, 33, 217, 128);
    return Column(children: [
      SizedBox(
        height: 40,
      ),
      SelectableText(
        "AGREEABLENESS",
        style: TextStyle(
            color: greenTheme, fontWeight: FontWeight.w800, fontSize: 18),
      ),
      FacetTitle(index: 0),
      rowTable(
        fasetScore: fasetScore[0],
        num: 1,
      ),
      FacetTitle(index: 1),
      rowTable(
        fasetScore: fasetScore[1],
        num: 2,
      ),
      FacetTitle(index: 2),
      rowTable(
        fasetScore: fasetScore[2],
        num: 3,
      ),
      SizedBox(
        height: 50,
      ),
      SelectableText(
        "Conscientiousness".toUpperCase(),
        style: TextStyle(
            color: greenTheme, fontWeight: FontWeight.w800, fontSize: 18),
      ),
      FacetTitle(index: 3),
      rowTable(
        fasetScore: fasetScore[3],
        num: 4,
      ),
      FacetTitle(index: 4),
      rowTable(
        fasetScore: fasetScore[4],
        num: 5,
      ),
      FacetTitle(index: 5),
      rowTable(
        fasetScore: fasetScore[5],
        num: 6,
      ),
      SizedBox(
        height: 50,
      ),
      SelectableText(
        "Emotional Stability".toUpperCase(),
        style: TextStyle(
            color: greenTheme, fontWeight: FontWeight.w800, fontSize: 18),
      ),
      FacetTitle(index: 6),
      rowTable(
        fasetScore: fasetScore[6],
        num: 7,
      ),
      FacetTitle(index: 7),
      rowTable(
        fasetScore: fasetScore[7],
        num: 8,
      ),
      FacetTitle(index: 8),
      rowTable(
        fasetScore: fasetScore[8],
        num: 9,
      ),
      SizedBox(
        height: 50,
      ),
      SelectableText(
        "Extraversion".toUpperCase(),
        style: TextStyle(
            color: greenTheme, fontWeight: FontWeight.w800, fontSize: 18),
      ),
      FacetTitle(index: 9),
      rowTable(
        fasetScore: fasetScore[9],
        num: 10,
      ),
      FacetTitle(index: 10),
      rowTable(
        fasetScore: fasetScore[10],
        num: 11,
      ),
      FacetTitle(index: 11),
      rowTable(
        fasetScore: fasetScore[11],
        num: 12,
      ),
      SizedBox(
        height: 50,
      ),
      SelectableText(
        "Open Mindedness".toUpperCase(),
        style: TextStyle(
            color: greenTheme, fontWeight: FontWeight.w800, fontSize: 18),
      ),
      FacetTitle(index: 12),
      rowTable(
        fasetScore: fasetScore[12],
        num: 13,
      ),
      FacetTitle(index: 13),
      rowTable(
        fasetScore: fasetScore[13],
        num: 14,
      ),
      FacetTitle(index: 14),
      rowTable(
        fasetScore: fasetScore[14],
        num: 15,
      ),
    ]);
  }
}

class rowTable extends StatelessWidget {
  rowTable({
    Key? key,
    required int fasetScore,
    required this.num,
  })  : _fasetScore = fasetScore,
        super(key: key);

  final int _fasetScore;
  final int num;
  final Color fasetColor = Color.fromARGB(255, 50, 241, 149);
  String leftTitle = "";
  String rightTitle = "";
  getLeftTitle() {
    switch (num) {
      case 1:
        leftTitle = "Data $num";
        break;
      case 2:
        leftTitle = "Data $num";
        break;
      case 3:
        leftTitle = "Data $num";
        break;
      case 4:
        leftTitle = "Data $num";
        break;
      case 5:
        leftTitle = "Data $num";
        break;
      case 6:
        leftTitle = "Data $num";
        break;
      case 7:
        leftTitle = "Data $num";
        break;
      case 8:
        leftTitle = "Data $num";
        break;
      case 9:
        leftTitle = "Data $num";
        break;
      case 10:
        leftTitle = "Data $num";
        break;
      case 11:
        leftTitle = "Data $num";
        break;
      case 12:
        leftTitle = "Data $num";
        break;
      case 13:
        leftTitle = "Data $num";
        break;
      case 14:
        leftTitle = "Data $num";
        break;
      case 15:
        leftTitle = "Data $num";
        break;
      default:
    }
  }

  getRightTitle() {
    switch (num) {
      case 1:
        rightTitle = "Data $num";
        break;
      case 2:
        rightTitle = "Data $num";
        break;
      case 3:
        rightTitle = "Data $num";
        break;
      case 4:
        rightTitle = "Data $num";
        break;
      case 5:
        rightTitle = "Data $num";
        break;
      case 6:
        rightTitle = "Data $num";
        break;
      case 7:
        rightTitle = "Data $num";
        break;
      case 8:
        rightTitle = "Data $num";
        break;
      case 9:
        rightTitle = "Data $num";
        break;
      case 10:
        rightTitle = "Data $num";
        break;
      case 11:
        rightTitle = "Data $num";
        break;
      case 12:
        rightTitle = "Data $num";
        break;
      case 13:
        rightTitle = "Data $num";
        break;
      case 14:
        rightTitle = "Data $num";
        break;
      case 15:
        rightTitle = "Data $num";
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    getLeftTitle();
    getRightTitle();
    int boxNum = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Tooltip(
            textStyle: TextStyle(fontSize: 13, color: Colors.white),
            message: 'Left Data Details ',
            child: SelectableText(leftTitle)),
        SizedBox(
          width: 20,
        ),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 1),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 2),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 3),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 4),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 5),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 6),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 7),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 8),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 9),
        BoxBar(fasetScore: _fasetScore, fasetColor: fasetColor, boxNum: 10),
        SizedBox(
          width: 20,
        ),
        Tooltip(
            textStyle: TextStyle(fontSize: 13, color: Colors.white),
            message: "Right Data Details",
            child: SelectableText(rightTitle)),
      ],
    );
  }
}

class FacetTitle extends StatelessWidget {
  const FacetTitle({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    Color greenTheme = Color.fromARGB(255, 33, 217, 128);
    List<String> facetTitle = [
      "Compassion",
      "Respectfulness",
      "Trust",
      "Organization",
      "Productiveness",
      "Responsibility",
      "Anxiety",
      "Depression",
      "Emotional Volatility",
      "Assertiveness",
      "Energy Level",
      "Sociability",
      "Aesthetic Sensitivity",
      "Creative Imagination",
      "Intellectual Curiosity"
    ];
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        SelectableText(
          facetTitle[index],
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class BoxBar extends StatelessWidget {
  const BoxBar({
    Key? key,
    required int fasetScore,
    required this.fasetColor,
    required this.boxNum,
  })  : _fasetScore = fasetScore,
        super(key: key);

  final int _fasetScore;
  final Color fasetColor;
  final int boxNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(),
        color: _fasetScore == boxNum ? fasetColor : null,
      ),
      child: Center(
        child: Text(
          "$boxNum",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(162, 93, 93, 93)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
