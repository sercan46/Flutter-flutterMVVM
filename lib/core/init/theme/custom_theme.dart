import 'package:flutter/material.dart';

const String FONT_FAMILY = "Poppins";

final ThemeData customTheme = ThemeData(
  fontFamily: FONT_FAMILY,
  brightness: Brightness.light,
  primaryColor: const Color(0xFF163C79),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xFF163C79),
  ),
  errorColor: const Color(0xffd32f2f),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF163C79))),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Color(0xFF163C79),
    ),
  ),
  appBarTheme:
      AppBarTheme(backgroundColor: Color(0xFF163C79), centerTitle: true),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xFF163C79),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xFF163C79),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xFF163C79),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xffC20003),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    isDense: false,
    contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
    isCollapsed: false,
    suffixIconColor: Color(0xFF163C79),
    prefixIconColor: Color(0xFF163C79),
    prefixStyle: TextStyle(
      color: Color(0xFF163C79),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xFF163C79),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xFF163C79),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: true,
    fillColor: Color(0x00000000),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffC20003),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF163C79),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF163C79),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF163C79),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF163C79),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF163C79),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xFF163C79),
    opacity: 1,
    size: 24,
  ),
);
