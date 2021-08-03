import 'package:calculator/widgets/theme,.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //  backgroundColor(Colors.accents),

      child: Container(
        color: Colors.red,
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.only(top: 150),
            child: ListView(
              // padding: Vx.mH8,
              children: [
                "0".text.xl6.align(TextAlign.end).make(),
                MyButtons(),

                // ElevatedButton(onPressed: null, child: "AC".text.make())
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: "AC".text.make(),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyThemes.creamColor),
            shape: MaterialStateProperty.all(CircleBorder()),
            // fixedSize: MaterialStateProperty.all(Size(80, 80)),
          ),
        ).pOnly(right: 10),
        ElevatedButton(
          onPressed: () {},
          child: "+/-".text.make(),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(MyThemes.creamColor),
              shape: MaterialStateProperty.all(CircleBorder()),
              fixedSize: MaterialStateProperty.all(Size(80, 80))),
        ).pOnly(right: 10),
        ElevatedButton(
          onPressed: () {},
          child: "AC".text.make(),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(MyThemes.creamColor),
              shape: MaterialStateProperty.all(CircleBorder()),
              fixedSize: MaterialStateProperty.all(Size(80, 80))),
        ).pOnly(right: 10),
        ElevatedButton(
          onPressed: () {},
          child: "AC".text.make(),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(MyThemes.creamColor),
              shape: MaterialStateProperty.all(CircleBorder()),
              fixedSize: MaterialStateProperty.all(Size(80, 80))),
        ),
      ],
    );
  }
}
