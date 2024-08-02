import 'package:flutter/material.dart';

const appBarTheme = AppBarTheme(
    foregroundColor: Colors.white,
    backgroundColor: Color.fromARGB(255, 0, 65, 100),
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500));

const textButtonDark = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 0, 65, 100)),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    textStyle: WidgetStatePropertyAll(
        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
    elevation: WidgetStatePropertyAll(5),
    shadowColor: WidgetStatePropertyAll(Color.fromARGB(255, 2, 31, 48)),
    padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(15, 5, 15, 5)));

const textButtonLight = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 14, 101, 148)),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    textStyle: WidgetStatePropertyAll(
        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
    elevation: WidgetStatePropertyAll(5),
    shadowColor: WidgetStatePropertyAll(Color.fromARGB(255, 2, 31, 48)),
    padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(15, 5, 15, 5)));

const timerTextStyle =
    TextStyle(fontSize: 42, fontFamily: 'roboto', fontWeight: FontWeight.w600);
