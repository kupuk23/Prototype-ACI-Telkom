// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_`constr`uctors, non_constant_identifier_names, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:database_test/classes/myColor.dart';
import 'package:database_test/result_pages/resultDesktop.dart';
import 'package:database_test/widget/barChart.dart';
import 'package:database_test/widget/faset_charts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'classes/class.dart';
import 'widget/description_domain.dart';

class ResultsPage extends StatefulWidget {
  final String resultId;
  const ResultsPage({Key? key, required this.resultId}) : super(key: key);

  // This widget is the home page of your applicati`o`n. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  void _incrementfasetScore() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // faset1Score without calling setState(), then the build method would not be
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color greenTheme = Color.fromARGB(255, 33, 217, 128);
    String name = "";
    String nickname = '';
    int values = 10;

    List<int> stdScore = [];
    List<int> dom = [];
    List<int> faset2 = [];
    final db = FirebaseFirestore.instance;
    GlobalKey _tableKey = GlobalKey();
    late double tableWidth;
    late double tableHeight;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementfasetScore method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Title(
        title: "Result",
        color: Colors.black,
        child: ResponsiveBuilder(builder: (context_, sizingInformation) {
          var textAlignment =
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? TextAlign.center
                  : TextAlign.center;

          double titleSize =
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? 65
                  : 45;

          double descriptionSize =
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? 25
                  : 20;

          return Scaffold(
              backgroundColor: Color.fromARGB(255, 245, 245, 245),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                // Here we take the value from the ResultsPage object that was created by
                // the App.build method, and use it to set our appbar title.
                title: Center(
                  child: SelectableText(
                    "NIK : " + widget.resultId,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              body: StreamBuilder<QuerySnapshot>(
                  stream: db.collection('userCSV10').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                          child: Center(child: CircularProgressIndicator()));
                    }
                    for (var doc in snapshot.data!.docs) {
                      if (doc['nik'] == widget.resultId) {
                        // faset.add(int.parse(doc['id']));
                        try {
                          name = "Dodi Heryanto"; //doc['name'];
                          nickname = (name.split(' ')[0]);
                          stdScore.add(doc['facet1']);
                          stdScore.add(doc['facet2']);
                          stdScore.add(doc['facet3']);
                          stdScore.add(doc['facet4']);
                          stdScore.add(doc['facet5']);
                          stdScore.add(doc['facet6']);
                          stdScore.add(doc['facet7']);
                          stdScore.add(doc['facet8']);
                          stdScore.add(doc['facet9']);
                          stdScore.add(doc['facet9']);
                          stdScore.add(doc['facet10']);
                          stdScore.add(doc['facet11']);
                          stdScore.add(doc['facet12']);
                          stdScore.add(doc['facet13']);
                          stdScore.add(doc['facet14']);
                          stdScore.add(doc['facet15']);
                          dom.add(doc['dom1']);
                          dom.add(doc['dom2']);
                          dom.add(doc['dom3']);
                          dom.add(doc['dom4']);
                          dom.add(doc['dom5']);
                          print('faset is : $stdScore');
                          break;
                        } catch (err) {
                          print("faset err is $err");
                          stdScore.clear();
                        }
                      } else {
                        stdScore.clear();
                      }
                    }
                    if (stdScore.isEmpty) {
                      return Container(
                        child: SelectableText("no Data"),
                      );
                    }
                    return ScreenTypeLayout(
                        desktop: ResultDesktop(
                          name: name,
                          nickname: nickname,
                          dom: dom,
                          stdScore: stdScore,
                          resultId: widget.resultId,
                          titleSize: titleSize,
                          textAlignment: textAlignment,
                          descriptionSize: descriptionSize,
                        ),
                        mobile: ResultDesktop(
                          name: name,
                          nickname: nickname,
                          dom: dom,
                          stdScore: stdScore,
                          resultId: widget.resultId,
                          titleSize: titleSize,
                          textAlignment: textAlignment,
                          descriptionSize: descriptionSize,
                        ));
                  }));
        }));
  }
}
