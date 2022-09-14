// ignore_for_file: prefer_const_constructors
import 'package:responsive_builder/responsive_builder.dart';
import 'package:database_test/widget/centered_view.dart';
import 'package:database_test/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:database_test/classes/myColor.dart';

class HomePage extends StatefulWidget {
  final ValueChanged<String> onTapped;
  const HomePage({Key? key, required this.onTapped}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _textFormController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScrollController con = ScrollController();
    double titleSize = 80;
    String inputID = '';
    return ResponsiveBuilder(
      builder: (context_, sizingInformation) {
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
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          body: ScreenTypeLayout(
              desktop: HomeDesktop(
                  titleSize: titleSize,
                  textAlignment: textAlignment,
                  descriptionSize: descriptionSize,
                  formKey: formKey,
                  textFormController: _textFormController,
                  widget: widget),
              mobile: HomeMobile(
                  titleSize: titleSize,
                  textAlignment: textAlignment,
                  descriptionSize: descriptionSize,
                  formKey: formKey,
                  textFormController: _textFormController,
                  widget: widget)),
        );
      },
    );
  }
}

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({
    Key? key,
    required this.titleSize,
    required this.textAlignment,
    required this.descriptionSize,
    required this.formKey,
    required TextEditingController textFormController,
    required this.widget,
  })  : _textFormController = textFormController,
        super(key: key);

  final double titleSize;
  final TextAlign textAlignment;
  final double descriptionSize;
  final GlobalKey<FormState> formKey;
  final TextEditingController _textFormController;
  final HomePage widget;

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavBar(),
        Flexible(
          child: Container(
            //color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width * 0.95,
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(children: [
                    Container(
                      // color: Colors.green,
                      width: MediaQuery.of(context).size.width * (3 / 5),
                      child: Header(
                          titleSize: widget.titleSize,
                          textAlignment: widget.textAlignment),
                    ),
                    KolomField(
                        formKey: widget.formKey,
                        textFormController: widget._textFormController,
                        widget: widget.widget)
                  ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    Key? key,
    required this.titleSize,
    required this.textAlignment,
    required this.descriptionSize,
    required this.formKey,
    required TextEditingController textFormController,
    required this.widget,
  })  : _textFormController = textFormController,
        super(key: key);

  final double titleSize;
  final TextAlign textAlignment;
  final double descriptionSize;
  final GlobalKey<FormState> formKey;
  final TextEditingController _textFormController;
  final HomePage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            child: Header(titleSize: titleSize, textAlignment: textAlignment),
          ),
          KolomField(
              formKey: formKey,
              textFormController: _textFormController,
              widget: widget)
        ],
      ),
    );
  }
}

// class SubHeader extends StatelessWidget {
//   const SubHeader({
//     Key? key,
//     required this.descriptionSize,
//     required this.textAlignment,
//   }) : super(key: key);

//   final double descriptionSize;
//   final TextAlign textAlignment;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
//       style: TextStyle(
//         fontSize: descriptionSize,
//       ),
//       textAlign: textAlignment,
//     );
//   }
// }

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.titleSize,
    required this.textAlignment,
  }) : super(key: key);

  final double titleSize;
  final TextAlign textAlignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Individual Assessment Report\nACI Telkom",
      style: TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.w800,
          fontSize: titleSize),
      textAlign: textAlignment,
    );
  }
}

class KolomField extends StatelessWidget {
  const KolomField({
    Key? key,
    required this.formKey,
    required TextEditingController textFormController,
    required this.widget,
  })  : _textFormController = textFormController,
        super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController _textFormController;
  final HomePage widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: SizedBox(
                height: 60,
                width: 250,
                child: Form(
                  key: formKey,
                  child: TextFormField(
                    controller: _textFormController,
                    validator: (value) {
                      if (value!.isEmpty || !RegExp('[0-9]').hasMatch(value)) {
                        return "Enter ID Number Correctly";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        focusColor: MyColors.green,
                        border: OutlineInputBorder(),
                        labelText: 'ID',
                        alignLabelWithHint: true),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: Container(
                height: 65,
                width: 300,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(MyColors.green)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(_textFormController.text);
                        widget.onTapped(_textFormController.text);
                      }
                    }, //
                    child: Text(
                      "Lihat Hasil",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 23),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
