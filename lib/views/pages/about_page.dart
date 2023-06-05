import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constants.dart';
import '../widgets/about_us_animated_container.dart';
import '../widgets/bottom_nav_bar.dart';

class AboutPage extends StatefulWidget {
  AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var _pos1 = Alignment.topLeft;
  var _pos2 = Alignment.bottomLeft;
  var _pos3 = Alignment.bottomRight;

  bool isVisionDescriptionVisible = true;
  bool isMissionDescriptionVisible = false;
  bool isGoalDescriptionVisible = false;

  // handle taps on the first widget
  void _onTapFirst() {
    setState(() {
      // reset the positions of all three widgets

      _pos1 = Alignment.topLeft;
      _pos2 = Alignment.bottomLeft;
      _pos3 = Alignment.bottomRight;

      isVisionDescriptionVisible = true;
      isGoalDescriptionVisible = false;
      isMissionDescriptionVisible = false;
    });
  }

  // handle taps on the second widget
  void _onTapSecond() {
    setState(() {
      // move the third widget to the top-right corner

      _pos1 = Alignment.topLeft;
      _pos3 = Alignment.topRight;
      _pos2 = Alignment.bottomLeft;

      isVisionDescriptionVisible = false;
      isGoalDescriptionVisible = false;
      isMissionDescriptionVisible = true;
    });
  }

  // handle taps on the third widget
  void _onTapThird() {
    setState(() {
      // swap the positions of the first and second widgets

      _pos1 = Alignment.topRight;
      _pos2 = Alignment.topLeft;
      _pos3 = Alignment.bottomRight;

      isVisionDescriptionVisible = false;
      isGoalDescriptionVisible = true;
      isMissionDescriptionVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: text("About Us", fontWeight: bold),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home_page_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
              child: Column(
                  //(clipBehavior: Clip.none,
                  children: [
                Image.asset(
                  'assets/gbm.png',
                  height: 200,
                  width: width,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mlsalogo1.png'),
                      ),
                      // border: Border.all(color: Colors.white54, width: 2),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(children: [
                      const Text(
                        'About Us',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
                        child: Text(
                          'MLSA KIIT Chapter, Microsoft Learn Student Ambassador offers students the chance to develop tech skills through Microsoft...'
                          'Learn more',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.81,
                        height: height * 0.32,
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: _onTapFirst,
                              child: AnimatedAlign(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                                alignment: _pos1,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: AnimatedSwitcher(
                                    duration: const Duration(seconds: 1),
                                    switchInCurve: Curves.easeIn,
                                    switchOutCurve: Curves.easeOut,
                                    child: isVisionDescriptionVisible
                                        ? AboutUsExpandedContainer(
                                            details:
                                                'To evaluate the coding culture of KIIT by providing oppotunities to students to work on projects and boost their analytical and logical skills along with the coding',
                                            logo: Image.asset(
                                                'assets/groups.png'),
                                            textAlign: TextAlign.left,
                                            title: "Our Vision",
                                          )
                                        : Container(
                                            height: height * 0.13,
                                            width: width * 0.35,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                    'assets/groups.png'),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.cyan[200]),
                                                  'Our Vision ',
                                                ),
                                              ],
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: _onTapSecond,
                              child: AnimatedAlign(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                                alignment: _pos2,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: AnimatedSwitcher(
                                    duration: const Duration(seconds: 1),
                                    switchInCurve: Curves.easeIn,
                                    child: isMissionDescriptionVisible
                                        ? AboutUsExpandedContainer(
                                            details:
                                                'To evaluate the coding culture of KIIT by providing oppotunities to students to work on projects and boost their analytical and logical skills along with the coding',
                                            logo: Image.asset(
                                                'assets/mountain.png'),
                                            textAlign: TextAlign.left,
                                            title: "Our Mission",
                                          )
                                        : Container(
                                            height: height * 0.13,
                                            // width: 140,
                                            width: width * 0.35,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                            'assets/mountain.png'),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .cyan[200]),
                                                          'Our mission ',
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: _onTapThird,
                              child: AnimatedAlign(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                                alignment: _pos3,
                                child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: AnimatedSwitcher(
                                      duration: const Duration(seconds: 1),
                                      switchInCurve: Curves.easeIn,
                                      child: isGoalDescriptionVisible
                                          ? AboutUsExpandedContainer(
                                              details:
                                                  'To evaluate the coding culture of KIIT by providing oppotunities to students to work on projects and boost their analytical and logical skills along with the coding',
                                              logo: Image.asset(
                                                  'assets/target.png'),
                                              textAlign: TextAlign.left,
                                              title: 'Our Goal ',
                                              descriptionAlignment:
                                                  Alignment.centerRight,
                                            )
                                          : Container(
                                              height: height * 0.13,
                                              width: width * 0.35,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Image.asset(
                                                          'assets/target.png'),
                                                      Text(
                                                        'Our Goal ',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Colors
                                                                .cyan[200]),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                        child: Text(
                          'Our domains',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      //Column(                   //GestureDetector(
                      //onTap: () => Navigator.push(
                      // context,
                      //MaterialPageRoute(
                      //builder: (context) =>,
                      Wrap(direction: Axis.horizontal, children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 140,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage('assets/Technical.png'),
                                    alignment: Alignment(0.1, -0.5)),
                              ),
                              padding: const EdgeInsets.all(6),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                    top: 100, bottom: 10, left: 12, right: 12),
                                child: Text(
                                  'TECHNICAL',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 140,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage('assets/creative.png'),
                                    alignment: Alignment(0.1, -0.5)),
                              ),
                              padding: const EdgeInsets.all(6),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                    top: 100, bottom: 10, left: 12, right: 12),
                                child: Text(
                                  'CREATIVE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 140,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage('assets/op.png'),
                                    alignment: Alignment(0.1, -0.5)),
                              ),
                              padding: const EdgeInsets.all(6),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                    top: 100, bottom: 10, left: 12, right: 12),
                                child: Text(
                                  'OPERATIONS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 140,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage('assets/marketing.png'),
                                    alignment: Alignment(0.1, -0.5)),
                              ),
                              padding: const EdgeInsets.all(6),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                    top: 100, bottom: 10, left: 12, right: 12),
                                child: Text(
                                  'MARKETING',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 140,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage('assets/graphics.png'),
                                    alignment: Alignment(0.1, -0.5)),
                              ),
                              padding: const EdgeInsets.all(6),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                    top: 100, bottom: 10, left: 12, right: 12),
                                child: Text(
                                  'GRAPHICS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 140,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage('assets/youtube.png'),
                                    alignment: Alignment(0.1, -0.5)),
                              ),
                              padding: const EdgeInsets.all(6),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                    top: 100, bottom: 10, left: 12, right: 12),
                                child: Text(
                                  'YOUTUBE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ))),
                        )
                      ])
                    ]))
              ])),
        ));
  }
}
