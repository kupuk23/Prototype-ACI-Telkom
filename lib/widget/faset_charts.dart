import 'package:database_test/classes/myColor.dart';
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
    Color fasetTitleColor = MyColors.yellow;
    return Column(children: [
      SizedBox(
        height: 40,
      ),
      SelectableText(
        "AGREEABLENESS",
        style: TextStyle(
            color: fasetTitleColor, fontWeight: FontWeight.w800, fontSize: 18),
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
        height: 70,
      ),
      SelectableText(
        "Conscientiousness".toUpperCase(),
        style: TextStyle(
            color: fasetTitleColor, fontWeight: FontWeight.w800, fontSize: 18),
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
        height: 70,
      ),
      SelectableText(
        "Emotional Stability".toUpperCase(),
        style: TextStyle(
            color: fasetTitleColor, fontWeight: FontWeight.w800, fontSize: 18),
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
        height: 70,
      ),
      SelectableText(
        "Extraversion".toUpperCase(),
        style: TextStyle(
            color: fasetTitleColor, fontWeight: FontWeight.w800, fontSize: 18),
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
        height: 70,
      ),
      SelectableText(
        "Open Mindedness".toUpperCase(),
        style: TextStyle(
            color: fasetTitleColor, fontWeight: FontWeight.w800, fontSize: 18),
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
  final Color fasetColor = MyColors.yellow;
  String leftTitle = "";
  String rightTitle = "";
  String leftDesc = "";
  String rightDesc = "";
  getTitle() {
    switch (num) {
      case 1:
        leftTitle = "Egois";
        leftDesc =
            "Individu memiliki kepedulian yang rendah terhadap kesejahteraan orang lain.";
        rightTitle = "Peduli";
        rightDesc =
            "Individu memiliki kepedulian tinggi terhadap kesejahteraan orang lain.";
        break;
      case 2:
        leftTitle = "Arogan";
        leftDesc =
            "Individu kurang dapat menghargai hak dan preferensi orang lain.";
        rightTitle = "Rendah hati";
        rightDesc = "Individu sangat menghargai hak dan preferensi orang lain.";
        break;
      case 3:
        leftTitle = "Skeptis";
        leftDesc =
            "Individu memiliki kesulitan untuk berpikir positif tentang orang lain dan cenderung tidak percaya pada orang lain.";
        rightTitle = "Memercayai";
        rightDesc =
            "Individu cenderung berpikir positif tentang orang lain dan mudah percaya pada orang lain.";
        break;
      case 4:
        leftTitle = "Berantakan";
        leftDesc =
            "Individu memiliki apresiasi yang rendah terhadap keteraturan dan melakukan aktivitas secara acak.";
        rightTitle = "Teratur";
        rightDesc =
            "Individu memiliki apresiasi yang tinggi terhadap keteraturan dan melakukan aktivitas secara sistematis.";
        break;
      case 5:
        leftTitle = "Inkonsisten";
        leftDesc =
            "Individu memiliki etos kerja yang kurang baik, melaksanakan tugas sesuai suasana hati sendiri, serta abai dengan tujuan.";
        rightTitle = "Persisten";
        rightDesc =
            "Individu memiliki etos kerja yang sangat baik dan dapat melakukan aktivitas secara persisten untuk mewujudkan sebuah tujuan.";
        break;
      case 6:
        leftTitle = "Sulit diandalkan";
        leftDesc =
            "Individu memiliki komitmen yang rendah dalam menjalankan kewajiban dan perlu pemantauan dalam penyelesaian pekerjaan.";
        rightTitle = "Bertanggung jawab";
        rightDesc =
            "Individu memiliki komitmen yang tinggi dalam menjalankan kewajiban dan dapat diandalkan untuk menyelesaikan pekerjaan secara mandiri.";
        break;
      case 7:
        leftTitle = "Pencemas";
        leftDesc =
            "Individu mudah merasa cemas atau terganggu tanpa sebab yang jelas.";
        rightTitle = "Tenang";
        rightDesc =
            "Individu mampu bersikap tenang dan bertindak masuk akal dalam menghadapi berbagai situasi.";
        break;
      case 8:
        leftTitle = "Pesimis";
        leftDesc =
            "Individu memiliki minat yang rendah terhadap aktivitas sehari-hari, tidak bersemangat, dan bersikap pesimis.";
        rightTitle = "Optimis";
        rightDesc =
            "Individu memiliki minat dan semangat yang tinggi dalam menjalani aktivitas sehari-hari dan mampu bersikap optimis.";
        break;
      case 9:
        leftTitle = "Temperamental";
        leftDesc = "Individu kesulitan mengelola emosi dalam berbagai situasi.";
        rightTitle = "Stabil";
        rightDesc = "Individu mampu mengelola emosi dalam berbagai situasi. ";
        break;
      case 10:
        leftTitle = "Senang Menyendiri";
        leftDesc =
            "Individu memiliki minat yang rendah untuk terlibat dalam interaksi sosial. Ia juga kurang merasa nyaman berada dalam kegiatan yang melibatkan banyak orang.";
        rightTitle = "Senang Bersosialisasi";
        rightDesc =
            "Individu memiliki minat yang tinggi terhadap interaksi sosial. Ia menikmati berbagai aktivitas yang melibatkan banyak orang.";
        break;
      case 11:
        leftTitle = "Sulit berpendapat";
        leftDesc =
            "Individu mengalami kesulitan mengemukakan pendapat saat berada dalam situasi sosial.";
        rightTitle = "Asertif";
        rightDesc =
            "Individu dapat dengan mudah mengemukakan pendapat dalam berbagai situasi sosial.";
        break;
      case 12:
        leftTitle = "Apatis";
        leftDesc =
            "Individu kurang antusias dan tidak bersemangat dalam beragam aktivitas.";
        rightTitle = "Antusias";
        rightDesc =
            "Individu menunjukkan antusiasme dan semangat yang tinggi dalam menjalankan beragam aktivitas.";
        break;
      case 13:
        leftTitle = "Keingintahuan rendah";
        leftDesc =
            "Individu memiliki rasa ingin tahu yang rendah, tidak termotivasi untuk mencari informasi lebih lanjut mengenai berbagai hal.";
        rightTitle = "Keingintahuan tinggi";
        rightDesc =
            "Individu memiliki rasa ingin tahu yang tinggi. Ia bersikap kritis terhadap informasi yang diterima, dan termotivasi untuk mencari informasi lebih lanjut tentang hal tesebut.";
        break;
      case 14:
        leftTitle = "Praktikal";
        leftDesc =
            "Individu memiliki apresiasi yang rendah terhadap keindahan dan lebih mengutamakan keberfungsian.";
        rightTitle = "Estetis";
        rightDesc =
            "Individu mampu mengapresiasi keindahan dan menjadikannya pertimbangan penting dalam kehidupan.";
        break;
      case 15:
        leftTitle = "Monoton";
        leftDesc =
            "Individu memiliki kreativitas yang rendah serta merasa nyaman dengan ide dan kondisi yang sudah ada.";
        rightTitle = "Kreatif";
        rightDesc =
            "Individu memiliki kreativitas yang tinggi serta terbuka terhadap ide dan hal-hal baru.";
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    getTitle();
    int boxNum = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Tooltip(
            textStyle: TextStyle(fontSize: 13, color: Colors.white),
            message: leftDesc,
            child: Container(
                width: 90,
                child: SelectableText(
                  leftTitle,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ))),
        SizedBox(
          width: 10,
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
          width: 10,
        ),
        Tooltip(
            textStyle: TextStyle(fontSize: 13, color: Colors.white),
            message: rightDesc,
            child: Container(
                width: 90,
                child: SelectableText(
                  rightTitle,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ))),
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
