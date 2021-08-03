import 'package:calculator/pages/home.dart';
import 'package:calculator/widgets/theme,.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.light,
      
      theme: MyThemes.blackTheme(context),

      home: Home(),
    );
  }
}
