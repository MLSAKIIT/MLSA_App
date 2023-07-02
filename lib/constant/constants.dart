import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Color white = Colors.white; // Get white color
Color black = Colors.black; // Get black color

FontWeight bold = FontWeight.bold; // Get bold font weight

HexColor accentColor = HexColor("4DE4FB"); // Get accent(major color used) color

TextStyle poppins = GoogleFonts.poppins(); // Text Style used

/// In place of [Text] use [text] instead
Text text(
  String text, {
  TextStyle? textStyle,
  Color color = Colors.white,
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
    style: TextStyle(
      //Removing poppings because of error
      // textStyle: textStyle,
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

/// Use [headingText] instead of [Text] for headings
Text headingText(
  String text, {
  TextStyle? textStyle,
  Color color = Colors.white,
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
    style: TextStyle(
      //Removing poppings because of error
      // textStyle: textStyle,
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
      fontWeight: FontWeight.w600,
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

List<String> homePageEventsAssetList = [
  'assets/home_page_images/flutter_verse_image.png',
  'assets/home_page_images/front_end_with_benefits_image.png',
  'assets/home_page_images/flutter_verse_image.png'
];
List<String> homePageEventsNameList = [
  'Flutter Verse',
  'Front-End with Benefit',
  'Flutter Verse'
];
List<String> homePageBlogsAssetList = [
  'assets/home_page_images/blogs_image_1.png',
  'assets/home_page_images/blogs_image_2.png',
  'assets/home_page_images/blogs_image_1.png'
];
List<String> homePageBlogsNameList = ['DragGAN:', 'AI', 'DragGAN:'];
List<String> homePageBlogsDescriptionList = [
  'Unleashing the magic of AI art',
  'Lorem ipsum dolor sit amet',
  'Unleashing the magic of AI art'
];
