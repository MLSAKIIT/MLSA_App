import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradients/gradients.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'dart:math' as math;
import '../../constant/constants.dart';
import '../../controller/controller.dart';
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
    return WillPopScope(
        onWillPop: () async {
          Controller.pageControllerIndex.value = 0;
          return false;
        },
        child: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                  //(clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      height: height * 0.35,
                      child: Stack(
                        children: [
                          Container(
                            height: height,
                            width: width * 5,
                            decoration: BoxDecoration(
                                gradient: RadialGradientPainter(
                                    colors: [Color.fromRGBO(14, 162, 246, 0.9)],
                                    focal: Alignment
                                        .center, //Alignment(-.5, -0.5),
                                    focalRadius: 2)),
                          ),
                          Image.asset(
                            'assets/gbm.png',
                            height: height * 0.28,
                            width: width,
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: height * 0.13,
                              // width: height * 0.1,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/mlsalogo1.png'),
                                ),
                                // border: Border.all(color: Colors.white54, width: 2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          const Text(
                            'About Us',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          Padding(
                            padding:
                                EdgeInsets.only(top: 20, bottom: 20, left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 8.0, right: 1),
                                  child: Text(
                                    'MLSA KIIT Chapter, Microsoft Learn Student Ambassador offers students the chance to develop tech skills through Microsoft... ',
                                    style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1,
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Text(
                                  'Learn more',
                                  style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.0,
                                      color: Colors.cyan[200],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                )
                              ],
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
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                        'assets/groups.png'),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8.0),
                                                      child: Text(
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors
                                                                .cyan[200]),
                                                        'Our Vision ',
                                                      ),
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
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
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
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 8.0),
                                                              child: Text(
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .cyan[
                                                                        200]),
                                                                'Our mission ',
                                                              ),
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
                                                        BorderRadius.circular(
                                                            15),
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
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8.0),
                                                            child: Text(
                                                              'Our Goal ',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                          .cyan[
                                                                      200]),
                                                            ),
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
                            padding:
                                EdgeInsets.only(top: 10, bottom: 10, left: 5),
                            child: Text(
                              'Our domains',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                          //Column(                   //GestureDetector(
                          //onTap: () => Navigator.push(
                          // context,
                          //MaterialPageRoute(
                          //builder: (context) =>,
                          Wrap(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                    height: height * 0.17,
                                    width: width * 0.35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/domains/1.png'),
                                          alignment: Alignment(0.1, -0.5)),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Center(
                                        child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 100,
                                          bottom: 10,
                                          left: 12,
                                          right: 12),
                                      child: Text(
                                        'Technical',
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
                                    height: height * 0.17,
                                    width: width * 0.35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/domains/2.png'),
                                          alignment: Alignment(0.1, -0.5)),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Center(
                                        child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 100,
                                          bottom: 10,
                                          left: 12,
                                          right: 12),
                                      child: Text(
                                        'Creative',
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
                                    height: height * 0.17,
                                    width: width * 0.35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/domains/3.png'),
                                          alignment: Alignment(0.1, -0.5)),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Center(
                                        child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 100,
                                          bottom: 10,
                                          left: 12,
                                          right: 12),
                                      child: Text(
                                        'Operations',
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
                                    height: height * 0.17,
                                    width: width * 0.35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/domains/4.png'),
                                          alignment: Alignment(0.1, -0.5)),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Center(
                                        child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 100,
                                          bottom: 10,
                                          left: 12,
                                          right: 12),
                                      child: Text(
                                        'Marketing',
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
                                    height: height * 0.17,
                                    width: width * 0.35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/domains/5.png'),
                                          alignment: Alignment(0.1, -0.5)),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Center(
                                        child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 100,
                                          bottom: 10,
                                          left: 12,
                                          right: 12),
                                      child: Text(
                                        'Graphics',
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
                                  height: height * 0.17,
                                  width: width * 0.35,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('assets/domains/6.png'),
                                        alignment: Alignment(0.1, -0.5)),
                                  ),
                                  padding: const EdgeInsets.all(6),
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 100,
                                          bottom: 10,
                                          left: 12,
                                          right: 12),
                                      child: Text(
                                        'Youtube',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Expanded(
                              // child: ListView(scrollDirection: Axis.horizontal,
                              //children: [
                              //Padding(padding: EdgeInsets.all(8.0),
                              //child: Container(
                              //height: height * 0.1,
                              //width: width*0.1,
                              //decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              //color: Colors.white,

                              //),
                              //),
                              //),

                              // ],)
                              //)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'Our Leads',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              height: height * 0.2,
                              child: ListWheelScrollViewX(
                                scrollDirection: Axis.horizontal,
                                itemExtent: 100,
                                diameterRatio: 2,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image:
                                                AssetImage('mlsa_logo.png'))),
                                    height: height * 2,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15.0, bottom: 2.0),
                                    child: Text(
                                      'Anvit Dubey',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image:
                                                AssetImage('mlsa_logo.png'))),
                                    height: height * 2,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15.0, bottom: 2.0),
                                    child: Text(
                                      'Prashant Upadhyay',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image:
                                                AssetImage('mlsa_logo.png'))),
                                    height: height * 2,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15.0, bottom: 2.0),
                                    child: Text(
                                      'Sania Bhargav',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image:
                                                AssetImage('mlsa_logo.png'))),
                                    height: height * 2,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15.0, bottom: 2.0),
                                    child: Text(
                                      'Sagar Satapathy',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image:
                                                AssetImage('mlsa_logo.png'))),
                                    height: height * 2,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15.0, bottom: 2.0),
                                    child: Text(
                                      'Eshaan Anand',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image:
                                                AssetImage('mlsa_logo.png'))),
                                    height: height * 2,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15.0, bottom: 2.0),
                                    child: Text(
                                      'Swastika Bishnoi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        )));
  }
}


// class SemiCircleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     final radius = size.width / 2;

//     path.moveTo(radius, 0);
//     path.arcTo(
//       Rect.fromCircle(center: Offset(radius, radius), radius: radius),
//       0.0,
//       math.pi,
//       false,
//     );
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(SemiCircleClipper oldClipper) => false;
// }

