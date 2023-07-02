// ignore_for_file: prefer_typing_uninitialized_variables, unused_element

import 'package:flutter/material.dart';

import '../../constant/constants.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController rollnoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController branchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    //var deviceData = MediaQuery.of(context);

    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              height: h * 0.15,
              width: h * 0.15,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            _TextBlocks(
              fieldtext: 'Name',
              controller: nameController,
              height: h,
              width: w,
            ),
            _TextBlocks(
              fieldtext: 'Roll No',
              controller: rollnoController,
              height: h,
              width: w,
            ),
            _TextBlocks(
              fieldtext: 'E-mail',
              controller: emailController,
              height: h,
              width: w,
            ),
            _TextBlocks(
              fieldtext: 'Mobile',
              controller: mobileController,
              height: h,
              width: w,
            ),
            _TextBlocks(
              fieldtext: 'Branch',
              controller: branchController,
              height: h,
              width: w,
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                width: w,
                height: h * 0.05,
                child: ElevatedButton(
                  onPressed: () {},
                  child: text('Submit',
                      color: Colors.white,
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
