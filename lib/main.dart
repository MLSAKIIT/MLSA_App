import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlsa_app/views/pages/Qrcode_screen.dart';
import 'package:mlsa_app/views/pages/event_details.dart';
import 'package:mlsa_app/views/pages/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'MLSA App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
