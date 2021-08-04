import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.grey,
      fontFamily: GoogleFonts.arizonia().fontFamily,
      backgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme)
      // primaryTextTheme: GoogleFonts.latoTextTheme()
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      );
  static ThemeData blackTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
                bodyText1: TextStyle(),
                bodyText2: TextStyle(),
                caption: TextStyle())
            .apply(
          bodyColor: Colors.white,
          displayColor: Colors.blue,
        ),
      );

  //Colors
  static Color greyColor = Color(0xffa5a5a5);
  static Color darkGreyColor = Color(0xff333333);
  static Color yellowColor = Color(0xffff9e0a);
  static Color darkBluishColor = Color(0xff403b58);
}
