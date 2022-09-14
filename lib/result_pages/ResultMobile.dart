// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:database_test/classes/myColor.dart';
import 'package:database_test/results_page.dart';
import 'package:database_test/widget/barChart.dart';
import 'package:database_test/widget/description_domain.dart';
import 'package:database_test/widget/faset_charts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultMobile extends StatefulWidget {
  const ResultMobile({
    Key? key,
    required this.resultId,
    required this.titleSize,
    required this.textAlignment,
    required this.descriptionSize,
    required this.name,
    required this.nickname,
    required this.stdScore,
    required this.dom,
  }) : super(key: key);

  final String resultId;
  final String name;
  final String nickname;
  final List<int> stdScore;
  final List<int> dom;
  final double titleSize;
  final TextAlign textAlignment;
  final double descriptionSize;

  @override
  State<ResultMobile> createState() => _ResultMobileState();
}

class _ResultMobileState extends State<ResultMobile> {
  Color greenTheme = Color.fromARGB(255, 33, 217, 128);
  final db = FirebaseFirestore.instance;
  GlobalKey _tableKey = GlobalKey();
  late double tableWidth;
  late double tableHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
        height: MediaQuery.of(context).size.height * 0.9, // - 500,
        width: MediaQuery.of(context).size.width, //1920 - 500,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: SelectableText(
                'Name :  ${widget.name}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                child: SelectableText(
                  "Hasil Berdasarkan Faset",
                  style: TextStyle(
                      color: MyColors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ),
              FasetChart(fasetScore: widget.stdScore),
              SizedBox(
                height: 60,
              ),
              Center(
                child: SelectableText(
                  "Hasil Berdasarkan Domain",
                  style: TextStyle(
                      color: MyColors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BarChart(dom: widget.dom),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: SelectableText(
                  "Deskripsi Hasil:",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              DescriptionDomain(
                dom: widget.dom[0],
                name: widget.nickname,
                number: 1,
              ),
              DescriptionDomain(
                dom: widget.dom[1],
                name: widget.nickname,
                number: 2,
              ),
              DescriptionDomain(
                dom: widget.dom[2],
                name: widget.nickname,
                number: 3,
              ),
              DescriptionDomain(
                dom: widget.dom[3],
                name: widget.nickname,
                number: 4,
              ),
              DescriptionDomain(
                dom: widget.dom[4],
                name: widget.nickname,
                number: 5,
              )
            ],
          ),
        ));
    ;
  }
}
