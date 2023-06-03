import 'package:flutter/material.dart';

import '../../constant/constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
                //(clipBehavior: Clip.none,
                children: [
          // Container(
          //   height: double.infinity,
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/home_page_background.png'),
          //     ),
          //   ),
          // ),
          // Container(
          //   height: 200,
          //   width: width,
          //   child: Image.asset(
          //     'assets/gbm.png',
          //     // height: 200,
          //     // width: width,
          //     fit: BoxFit.fitWidth,
          //     alignment: Alignment.topCenter,
          //   ),
          // ),
          Image.asset(
            'assets/gbm.png',
            height: 200,
            alignment: Alignment(-1, -1),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 4,
              left: MediaQuery.of(context).size.width / 2 - 50,
              child: Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/mlsalogo1.png'),
                      alignment: Alignment(0, -0.7)),
                  // border: Border.all(color: Colors.white54, width: 2),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 160),
                  child: Text(
                    textAlign: TextAlign.left,
                    'About Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 1),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'MLSA KIIT Chapter, Microsoft Learn Student Ambassador offers students the chance to develop tech skills through Microsoft...'
                    'Learn more',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Wrap(direction: Axis.horizontal, children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: 115,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 100, right: 18, top: 18, bottom: 15),
                          child: Text(
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                              'To evaluate the coding culture of KIIT by providing oppotunities to students to work on projects and boost their analytical and logical skills along with the coding'),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/groups.png'),
                                alignment: Alignment(-0.75, -0.5)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 65, bottom: 18),
                        child: Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.cyan[200]),
                            'Our mission '),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('assets/mountain.png'),
                              alignment: Alignment(0, -0.5))),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 100,
                        width: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('assets/target.png'),
                              alignment: Alignment(0.1, -0.5)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 65, bottom: 18),
                            child: Align(
                              alignment: const Alignment(0, -0.1),
                              child: Text(
                                'Our Goal ',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.cyan[200]),
                              ),
                            )),
                      ))
                ]),
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
        ])));
  }
}
