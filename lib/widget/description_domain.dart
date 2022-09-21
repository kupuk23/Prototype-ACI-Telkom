import 'package:flutter/material.dart';

class DescriptionDomain extends StatelessWidget {
  const DescriptionDomain({
    Key? key,
    required this.dom,
    required this.number,
    required this.name,
  }) : super(key: key);

  final int dom;
  final int number;
  final String name;

  @override
  Widget build(BuildContext context) {
    String bullet =
        "\u2022 "; //Dom1 Agreeableness, dom2 Conscientiousness, dom3 Emotional Stability, dom4 Extraversion, dom5 Open Mindness
    String domHigh = "";
    String domMed = "";
    String domLow = "";
    double header1Size = 20;
    double header2Size = 16;
    double textSize = 15;
    String title = "";

    void ResultTitle() {
      title = number == 1
          ? "$bullet Agreeableness"
          : number == 2
              ? "$bullet Conscientiousness"
              : number == 3
                  ? "$bullet Emotional Stability"
                  : number == 4
                      ? "$bullet Extraversion"
                      : "$bullet Open Mindedness";
      title = title +
          (dom >= 7
              ? ": Tinggi"
              : dom >= 4
                  ? ": Sedang"
                  : ": Rendah");
    }

    void DomText() {
      switch (number) {
        case 1:
          domHigh =
              "Individu memiliki sikap positif dan kepedulian terhadap orang lain. Ia mampu menghargai hak serta nilai-nilai yang dimiliki orang lain. Pada beragam situasi, individu secara konsisten menunjukkan perilaku yang membantu meningkatkan kesejahteraan orang lain. Secara umum individu memiliki pandangan yang positif tentang orang lain, dan mudah baginya untuk percaya pada orang lain.";
          domMed =
              "Individu cukup memiliki kepekaan dan kepedulian terhadap orang lain. Pada banyak situasi ia mampu menghargai hak serta nilai-nilai yang dimiliki orang lain, namun tidak secara aktif melakukan tindakan yang dapat membantu meningkatkan kesejahteraan orang lain. Selain itu, terkadang individu mengalami kesulitan untuk melihat sisi positif dari orang lain. Akibatnya pada situasi-situasi tertentu ia sulit untuk percaya pada orang lain.";
          domLow =
              "Individu memiliki minat dan kepedulian yang rendah terhadap kesejahteraan orang lain. Ia sulit menghargai hak dan nilai-nilai yang dimiliki orang lain. Individu cenderung menunjukkan sikap apatis dan tak acuh terhadap kebutuhan orang lain. Selain itu, ia juga memiliki pandangan negatif dan sulit percaya pada orang lain.";
          break;
        case 2:
          domHigh =
              "Individu memiliki dorongan yang kuat untuk melakukan aktivitas yang berorientasi pada suatu tujuan tertentu. Dalam mencapai tujuan tersebut, individu melakukan berbagai hal secara teratur dan sistematis. Individu juga memiliki etos kerja yang baik, bertanggungjawab, dan berkomitmen terhadap tanggung jawab yang diberikan. Hal ini membuat individu dapat diandalkan untuk menyelesaikan berbagai pekerjaan yang diberikan secara mandiri. ";

          domMed =
              "Individu dapat melakukan aktivitas yang berorientasi pada suatu tujuan tertentu. Dalam mencapai tujuan tersebut, individu melakukannya dengan cukup teratur dan sistematis. Individu juga memiliki etos kerja, cukup bertanggungjawab, dan cukup berkomitmen terhadap tanggung jawab yang diberikan, sehingga dapat diandalkan untuk menyelesaikan beberapa pekerjaan tertentu secara mandiri.";

          domLow =
              "Individu kurang memiliki dorongan untuk melakukan usaha yang berorientasi pada suatu tujuan tertentu. Dalam beraktivitas, individu sulit menerapkan keteraturan dan kesulitan bekerja secara sistematis. Individu juga memiliki etos kerja yang kurang baik dan komitmen yang rendah karena seringkali melakukan aktivitas sesuka hati. Hal ini membuat individu sulit untuk diandalkan dan memerlukan pemantauan dari orang lain dalam menyelesaikan pekerjaanya. ";
          break;
        case 3:
          domHigh =
              "Individu mampu mengelola emosi dengan baik pada hampir semua situasi. Ia mampu bersikap tenang dan rasional dalam menghadapi situasi yang berbeda. Individu juga memiliki optimisme, minat dan semangat yang tinggi dalam menjalani aktivitas sehari-hari. ";

          domMed =
              "Individu cukup mampu mengelola emosi dalam beberapa situasi, namun terkadang mengalami kesulitan mengelola emosi dalam situasi tertentu. Ada kalanya individu dapat bersikap tenang dan rasional, namun di situasi yang lain ia dapat terpengaruh oleh emosi negatif. Individu memiliki optimisme, minat, dan semangat yang cukup baik untuk menjalani aktivitas sehari-hari.";

          domLow =
              "Individu kesulitan mengendalikan emosinya dalam berbagi situasi. Hal ini membuat individu mudah terbawa emosi dalam menghadapi situasi. Individu juga lebih sering merasakan emosi negatif seperti perasaan cemas, khawatir tanpa alasan, sedih, dan tegang. Berbagai emosi negatif ini juga membuat individu memiliki sikap pesimis dan minat yang rendah dalam menjalani aktivitas sehari-hari.";
          break;
        case 4:
          domHigh =
              "Individu menunjukkan ketertarikan, semangat, dan antusiasme yang tinggi terhadap beragam aktivitas. Pada berbagai situasi sosial, ia mampu menunjukkan emosi positif, membuka pembicaraan, maupun mengemukakan pendapatnya. Individu memiliki minat yang tinggi terhadap interaksi sosial dan sangat mudah beradaptasi dalam situasi sosial yang baru.";
          domMed =
              "Individu cukup bersemangat dan antusias untuk melakukan berbagai aktivitas. Individu cukup mampu untuk terlibat, menunjukkan emosi positif, dan mengemukakan pendapat dalam interaksi sosial. Ia juga cukup mampu untuk beradaptasi dalam situasi sosial yang baru.";
          domLow =
              "Individu kurang memiliki semangat dan antusiasme dalam beragam aktivitas. Ia juga cenderung mengalami kesulitan untuk terlibat, menunjukkan emosi positif, dan mengemukakan pendapat dalam berbagai situasi sosial. Hal ini membuat individu sulit beradaptasi ketika berada di situasi sosial yang baru.";
          break;
        case 5:
          domHigh =
              "Individu memiliki rasa ingin tahu yang tinggi, dan secara aktif mencari informasi yang menyeluruh serta mendalam. Individu juga memiliki perasaan positif tentang keindahan. Ia dapat mengapresiasi dan menikmatinya. Ia akan mengusahakan ada unsur-unsur estetika dalam berbagai bidang kehidupannya sehari-hari. Individu terbuka terhadap hal-hal baru,  berpikir secara kreatif, dan dapat menghasilkan ide-ide yang orisinal dan visioner.";
          domMed =
              "Individu merasa nyaman dengan informasi yang dimilikinya. Namun ia tidak berkeberatan mencari informasi tambahan jika merasa membutuhkannya. Meskipun cenderung mementingkan fungsi, namun individu dapat mengapresiasi keindahan dan nilai estetik dari hal-hal di sekelilingnya. Individu mampu berpikir kreatif jika dibutuhkan, meskipun idenya tidak terlalu orisinal ataupun visioner. Ia juga cukup terbuka terhadap  ide-ide baru.";

          domLow =
              "Individu memiliki rasa ingin tahu yang rendah. Ia cenderung menerima informasi yang diterima, tanpa keinginan untuk memahami atau menelitinya lebih lanjut. Pada kehidupan sehari-hari, ia lebih mementingkan fungsi dibandingkan nilai estetika. Kreativitas individu cenderung rendah, dan lebih nyaman dengan kondisi maupun ide-ide yang sudah ada. Ide-ide baru dapat membuatnya merasa khawatir/terancam.";
          break;
      }
    }

    DomText();
    ResultTitle();
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontSize: header1Size),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 0, 30, 0),
            child: SelectableText(
              dom >= 7
                  ? domHigh
                      .replaceAll('Individu', name)
                      .replaceAll('individu', name)
                  : dom >= 4
                      ? domMed
                          .replaceAll('Individu', name)
                          .replaceAll('individu', name)
                      : domLow
                          .replaceAll('Individu', name)
                          .replaceAll('individu', name),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: textSize),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
