import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

var height = Get.height; // Get the height of the screen
var width = Get.width; // Get the width of the screen

Color white = Colors.white; // Get white color
Color black = Colors.black; // Get black color

FontWeight bold = FontWeight.bold; // Get bold font weight

HexColor accentColor = HexColor("4DE4FB"); // Get accent(major color used) color
HexColor buttonColor = HexColor("0E75C3"); //Button color usesd

TextStyle poppins = GoogleFonts.poppins(); // Text Style used

//In place of Text() use text() instead
Text text(
  String text, {
  TextStyle? textStyle,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextBaseline? textBaseline,
  double? height,
  Locale? locale,
  Paint? foreground,
  Paint? background,
  List<Shadow>? shadows,
  List<FontFeature>? fontFeatures,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: textStyle,
      background: background,
      backgroundColor: backgroundColor,
      color: color,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      fontFeatures: fontFeatures,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      foreground: foreground,
      height: height,
      letterSpacing: letterSpacing,
      locale: locale,
      shadows: shadows,
      textBaseline: textBaseline,
      wordSpacing: wordSpacing,
    ),
  );
}
