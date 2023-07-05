import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradients/gradients.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:mlsa_app/views/widgets/domain_widget.dart';
import 'dart:math' as math;
import '../../constant/constants.dart';
import '../../controller/controller.dart';
import '../widgets/about_us_animated_container.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/leads_widgets.dart';

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

  ScrollController leadsScrollController = FixedExtentScrollController();

  @override
  void initState() {
    super.initState();
  }

  List<String> leadsNames = [
    'Anvit Dubey',
    'Prashant Upadhyay',
    'Saniya Bhargav',
    'Sagar Satapathy',
    'Eshaan Anand',
    'Swastika Bishnoi',
  ];

  @override
  Widget build(BuildContext context) {
    // leadsScrollController.jumpTo(
    //     (MediaQuery.of(context).size.width * 0.5) * (leadsNames.length / 2));
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
                            decoration: const BoxDecoration(
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
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'About Us',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 20),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
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
                          Wrap(
                            direction: Axis.horizontal,
                            children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: DomainWidget(
                                  domain: 'Technical',
                                  domainImagePath: 'assets/domains/1.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: DomainWidget(
                                  domain: 'Creative',
                                  domainImagePath: 'assets/domains/2.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: DomainWidget(
                                  domain: 'Operations',
                                  domainImagePath: 'assets/domains/3.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: DomainWidget(
                                  domain: 'Marketing',
                                  domainImagePath: 'assets/domains/4.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: DomainWidget(
                                  domain: 'Graphics',
                                  domainImagePath: 'assets/domains/5.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: DomainWidget(
                                  domain: 'YouTube',
                                  domainImagePath: 'assets/domains/6.png',
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: const [
                                Text(
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
                            padding: const EdgeInsets.all(0.0),
                            child: SizedBox(
                              height: height * 0.2,
                              child: ListWheelScrollViewX(
                                scrollDirection: Axis.horizontal,
                                itemExtent: width * 0.45,
                                squeeze: 0.9,
                                children: List.generate(
                                  leadsNames.length,
                                  (index) => LeadsWidget(
                                    image:
                                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                    name: leadsNames[index],
                                  ),
                                ),
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

