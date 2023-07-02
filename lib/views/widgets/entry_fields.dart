import 'package:flutter/material.dart';

import '../../constant/constants.dart';

class _TextBlocks extends StatelessWidget {
  final height;
  final width;
  final TextEditingController controller;
  final String fieldtext;

  const _TextBlocks({
    Key? key,
    required this.fieldtext,
    required this.controller,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.06,
      margin: const EdgeInsets.fromLTRB(0, 18, 0, 0),
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: (height * 0.024),
        ),
        cursorColor: Colors.white,
        controller: controller,
        decoration: InputDecoration(
          hintText: "",
          alignLabelWithHint: true,
          labelText: fieldtext,
          labelStyle: TextStyle(
              color: Colors.white,
              fontSize: height * 0.025,
              fontWeight: FontWeight.w100),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: accentColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: accentColor),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(color: accentColor, width: 4)),
        ),
      ),
    );
  }
}
