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

    void DomText() {
      switch (number) {
        case 1:
          domHigh =
              "Individu memiliki kepedulian yang tinggi terhadap orang lain dan menghargai hak serta nilai yang dimiliki oleh orang lain. Hal ini membuat individu secara aktif melakukan berbagai perilaku untuk meningkatkan kesejahteraan orang lain. Secara keseluruhan, individu juga memiliki pandangan dan keyakinan yang positif terhadap orang lain, sehingga mudah bagi individu untuk percaya pada orang lain.";
          domMed =
              "Individu memiliki kepedulian terhadap orang lain dan menghargai hak serta nilai yang dimiliki orang lain. Namun demikian, individu tidak secara aktif melakukan kegiatan untuk meningkatkan kesejahteraan orang lain. Secara keseluruhan, individu kurang memiliki pandangan dan keyakinan yang positif terhadap orang lain, sehingga  sulit bagi individu untuk percaya pada orang lain dalam situasi-situasi tertentu.";
          domLow =
              "Individu memiliki kepedulian yang rendah terhadap kesejahteraan orang lain dan kurang menghargai hak serta nilai yang dimiliki orang lain. Hal ini membuat individu berperilaku apatis/acuh tak acuh terhadap orang lain. Secara keseluruhan, individu juga memiliki pandangan dan keyakinan yang negatif terhadap orang lain, sehingga sulit bagi individu untuk percaya pada orang lain.";
          break;
        case 2:
          domHigh =
              "Individu memiliki dorongan yang kuat untuk melakukan aktivitas yang berorientasi pada suatu tujuan tertentu. Dalam mencapai tujuan tersebut, individu melakukan berbagai hal secara teratur dan sistematis. Individu juga memiliki etos kerja yang baik, bertanggungjawab, dan berkomitmen terhadap tanggung jawab yang diberikan. Hal ini membuat individu dapat diandalkan untuk menyelesaikan berbagai pekerjaan yang diberikan secara mandiri. ";

          domMed =
              "Individu dapat melakukan aktivitas yang berorientasi pada suatu tujuan tertentu. Dalam mencapai tujuan tersebut, individu melakukannya dengan cukup teratur dan sistematis. Individu juga memiliki etos kerja, cukup bertanggungjawab, dan cukup berkomitmen terhadap tanggung jawab yang diberikan, sehingga dapat sdiandalkan untuk menyelesaikan beberapa pekerjaan tertentu secara mandiri.";

          domLow =
              "Individu kurang memiliki dorongan untuk melakukan usaha yang berorientasi pada suatu tujuan tertentu. Dalam beraktivitas, individu sulit menerapkan keteraturan dan kesulitan bekerja secara sistematis. Individu juga memiliki etos kerja yang kurang baik dan komitmen yang rendah karena seringkali melakukan aktivitas sesuka hati. Hal ini membuat individu sulit untuk diandalkan dan memerlukan pemantauan dari orang lain dalam menyelesaikan pekerjaanya. ";
          break;
        case 3:
          domHigh =
              "Individu mampu mengendalikan emosinya dalam berbagai situasi. Hal ini membuat individu tetap bersikap tenang dan rasional dalam menghadapi berbagai situasi. Individu juga memiliki optimisme, minat, dan semangat yang tinggi untuk menjalani kesehariannya. ";

          domMed =
              "Individu mampu mengendalikan emosinya pada situasi tertentu. Individu dapat bersikap tenang dan rasional pada situasi tertentu dan di satu sisi dapat mudah terbawa emosi pada beberapa situasi tertentu. Individu memiliki optimisme, minat, dan semangat yang cukup untuk menjalani kesehariannya.";

          domLow =
              "Individu kesulitan mengendalikan emosinya dalam berbagi situasi. Hal ini membuat individu mudah terbawa emosi dalam menghadapi situasi. Individu juga lebih sering merasakan emosi negatif seperti perasaan cemas, khawatir tanpa alasan, sedih, dan tegang. Berbagai emosi negatif ini juga membuat individu memiliki sikap pesimis dan minat yang rendah dalam menjalani aktivitas sehari-hari.";
          break;
        case 4:
          domHigh =
              "Individu semangat dan antusias dalam beraktivitas. Dalam situasi sosial, individu sering menunjukkan emosi positif, mudah mengungkapkan pendapatnya, dan memiliki kemauan tinggi untuk terlibat dalam interaksi sosial. Hal ini membuat individu mudah beradaptasi dengan situasi sosial baru.";
          domMed =
              "Individu cukup semangat dan antusias dalam beraktivitas. Dalam situasi sosial, individu cukup menunjukkan emosi positif, dapat mengungkapkan pendapatnya, dan cukup terlibat dalam interaksi sosial. Hal ini membuat individu cukup dapat beradaptasi dengan situasi sosial baru.";

          domLow =
              "Individu kurang semangat dan antusias dalam beraktivitas. Dalam situasi sosial, individu jarang menunjukkan emosi positif, sulit mengungkapkan pendapatnya, dan memiliki kemauan rendah untuk terlibat dalam interaksi sosial. Hal ini membuat individu sulit beradaptasi dengan situasi sosial baru.";
          break;
        case 5:
          domHigh =
              "Individu memiliki keingintahuan yang tinggi sehingga akan mencari informasi secara menyeluruh dan mendalam. Ia mampu mempertanyakan suatu kondisi atau informasi selagi mencari kebenaran. Individu juga memiliki perasaan positif terhadap keindahan. Ia dapat mengapresiasi dan menikmatinya. Saat bekerja maupun berkreasi, individu akan mengusahakan adanya nilai estetika dalam hal-hal yang ia ciptakan. Ia akan berpikir secara kreatif serta terbuka terhadap ide-ide baru atau berbeda. Ide yang dimilikinya dapat bersifat orisinal dan visioner.";
          domMed =
              "Individu merasa nyaman dengan informasi yang ia miliki atau dapatkan. Ia akan mencari informasi lebih lanjut jika memang dirasa perlu. Individu juga mampu mengapresiasi dan menikmati keindahan. Akan tetapi, ia tidak secara aktif mencari atau mengusahakan adanya nilai estetika dalam berbagai hal. Ia mampu berpikir secara kreatif dan terbuka terhadap ide baru meskipun tidak bersifat orisinal dan visioner.";

          domLow =
              "Individu memiliki keingintahuan yang rendah sehingga ia akan cenderung menerima informasi yang ia terima tanpa mempertanyakannya lebih lanjut. Individu juga memiliki ketertarikan yang rendah terhadap keindahan. Ia akan lebih mengutamakan nilai fungsi dibandingkan nilai estetika. Individu memiliki kreativitas yang rendah serta lebih cenderung merasa nyaman dengan kondisi dan ide yang sudah ada. Ide-ide baru dapat membuatnya merasa khawatir/terancam.";
          break;
      }
    }

    DomText();
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: SelectableText(
                  number == 1
                      ? "$bullet Agreeableness"
                      : number == 2
                          ? "$bullet Conscientiousness"
                          : number == 3
                              ? "$bullet Emotional Stability"
                              : number == 4
                                  ? "$bullet Extraversion"
                                  : "$bullet Open Mindedness",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
                ),
              ),
              SelectableText(
                dom >= 7
                    ? ": Tinggi"
                    : dom >= 4
                        ? ": Sedang"
                        : ": Rendah",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
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
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
