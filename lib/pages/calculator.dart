import 'package:calculator/widgets/theme,.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// const List firstRow = [];
// const List secondRow = [];
// const List thirRow = [];
// const List fourthRow = [];
const Map labels = {
  "firstRow": ["AC", "+/-", "%", "÷"],
  "secondRow": ["7", "8", "9", "X"],
  "thirdRow": ["4", "5", "6", "-"],
  "fourthRow": ["1", "2", "3", "+"],
  "fifthRow": ["0", ".", "="],
};

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.only(top: 180),
            child: ListView(
              children: [
                Screen(),
                MyButtons(
                  labels: labels["firstRow"],
                  c1: MyThemes.greyColor,
                  c2: MyThemes.yellowColor,
                ).pOnly(bottom: 20),
                MyButtons(
                  labels: labels["secondRow"],
                  c1: MyThemes.darkGreyColor,
                  c2: MyThemes.yellowColor,
                ).pOnly(bottom: 20),
                MyButtons(
                  labels: labels["thirdRow"],
                  c1: MyThemes.darkGreyColor,
                  c2: MyThemes.yellowColor,
                ).pOnly(bottom: 20),
                MyButtons(
                  labels: labels["fourthRow"],
                  c1: MyThemes.darkGreyColor,
                  c2: MyThemes.yellowColor,
                ).pOnly(bottom: 20),
                MyButtonsL(
                    labels: labels["fifthRow"],
                    c1: MyThemes.darkGreyColor,
                    c2: MyThemes.yellowColor)
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class MyButtons extends StatelessWidget {
  final List labels;
  final Color c1;
  final Color c2;
  const MyButtons(
      {Key? key, required this.labels, required this.c1, required this.c2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyB(label: labels[0], color: c1).pOnly(left: 10),
        MyB(label: labels[1], color: c1).pOnly(left: 10),
        MyB(label: labels[2], color: c1).pOnly(left: 10),
        MyB(label: labels[3], color: c2).pOnly(left: 10, right: 10),
      ],
    );
  }
}

class MyButtonsL extends StatelessWidget {
  final List labels;
  final Color c1;
  final Color c2;
  const MyButtonsL(
      {Key? key, required this.labels, required this.c1, required this.c2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child:
                  "0".text.start.align(TextAlign.start).minFontSize(30).make()),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyThemes.darkGreyColor),
            shape: MaterialStateProperty.all(StadiumBorder()),
            fixedSize: MaterialStateProperty.all(Size(170, 80)),
            // textStyle: MaterialStateProperty.all(),
          ),
        ).pOnly(left: 10),
        MyB(label: labels[1], color: c1).pOnly(left: 10),
        MyB(label: labels[2], color: c2).pOnly(left: 10, right: 10),
      ],
    );
  }
}

class MyB extends StatelessWidget {
  final String label;
  final Color color;
  const MyB({Key? key, required this.label, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: label.text.align(TextAlign.center).minFontSize(30).make(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(CircleBorder()),
          fixedSize: MaterialStateProperty.all(Size(80, 80))),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return "0".text.xl6.align(TextAlign.end).make().pOnly(right: 30);
  }
}
