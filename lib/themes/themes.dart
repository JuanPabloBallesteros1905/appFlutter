import 'package:flutter/material.dart';

class Themes {
  static const Color colorsBottoms = Colors.purple;

  static final ThemeData lighTheme = ThemeData.light().copyWith(
    //*Elevated Bottom
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      minimumSize: Size(150, 40),
      shape: const StadiumBorder(),
      backgroundColor: Themes.colorsBottoms,
    )),
    //*Inputs Decoration
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: Color.fromARGB(255, 63, 62, 62),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}
