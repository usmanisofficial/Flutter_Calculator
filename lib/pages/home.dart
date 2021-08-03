import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.only(top: 150),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              "0".text.xl6.align(TextAlign.end).make(),
              Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: "AC".text.make()),
                  ElevatedButton(onPressed: () {}, child: "+/-".text.make()),
                  ElevatedButton(onPressed: () {}, child: "%".text.make()),
                  ElevatedButton(onPressed: () {}, child: "÷".text.make()),
                  
                ],
              )
              // ElevatedButton(onPressed: null, child: "AC".text.make())
            ],
          ),
        ),
      )),
    );
  }
}
