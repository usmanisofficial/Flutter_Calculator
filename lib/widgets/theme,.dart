import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.grey,
      fontFamily: GoogleFonts.poppins().fontFamily,
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
  static Color creamColor = Color.fromARGB(165, 165, 165, 165);
  static Color darkBluishColor = Color(0xff403b58);
}
