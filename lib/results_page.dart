// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_`constr`uctors, non_constant_identifier_names, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:database_test/widget/barChart.dart';
import 'package:database_test/widget/faset_charts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'classes/class.dart';
import 'widget/description_domain.dart';

class ResultsPage extends StatefulWidget {
  final String resultId;
  const ResultsPage({Key? key, required this.resultId}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
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
  Color greenTheme = Color.fromARGB(255, 33, 217, 128);
  String name = "";
  String nickname = '';
  int values = 10;
  int dom1 = 1;
  int dom2 = 3;
  int dom3 = 6;
  int dom4 = 9;
  int dom5 = 9;
  List<int> stdScore = [];
  List<int> dom = [];
  List<int> faset2 = [];
  final db = FirebaseFirestore.instance;
  GlobalKey _tableKey = GlobalKey();
  late double tableWidth;
  late double tableHeight;

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementfasetScore method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Title(
      title: "Result",
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // Here we take the value from the ResultsPage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(
            child: SelectableText(
              "NIK : " + widget.resultId,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            //color: Color.fromARGB(255, 220, 189, 189),
            //height: MediaQuery.of(context).size.height * 3.7, // - 500,
            width: MediaQuery.of(context).size.width, //1920 - 500,
            child: StreamBuilder<QuerySnapshot>(
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
                  return Container(
                    margin: EdgeInsets.all(10),

                    height: MediaQuery.of(context).size.height * 0.9, // - 500,
                    width:
                        MediaQuery.of(context).size.width * 0.9, //1920 - 500,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: SelectableText('Name :  $name')),
                          FasetChart(fasetScore: stdScore),
                          SizedBox(
                            height: 60,
                          ),
                          Center(
                            child: SelectableText(
                              "Hasil Berdasarkan Domain",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          BarChart(dom: dom),
                          SizedBox(
                            height: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                            child: SelectableText(
                              "Deskripsi Hasil:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          DescriptionDomain(
                            dom: dom[0],
                            name: nickname,
                            number: 1,
                          ),
                          DescriptionDomain(
                            dom: dom[1],
                            name: nickname,
                            number: 2,
                          ),
                          DescriptionDomain(
                            dom: dom[2],
                            name: nickname,
                            number: 3,
                          ),
                          DescriptionDomain(
                            dom: dom[3],
                            name: nickname,
                            number: 4,
                          ),
                          DescriptionDomain(
                            dom: dom[4],
                            name: nickname,
                            number: 5,
                          )
                        ],
                      ),
                    ),
                  );
                })),
      ),
    );
  }
}
