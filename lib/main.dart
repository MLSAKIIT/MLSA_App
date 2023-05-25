import 'package:flutter/material.dart';
import 'package:mlsa_app/views/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'MLSA App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}


