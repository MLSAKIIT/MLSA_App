import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(clipBehavior: Clip.none, children: [
      Image.asset(
        'assets/splash_background.png',
        fit: BoxFit.fitWidth,
      ),
      Positioned(
          top: MediaQuery.of(context).size.height / 3,
          left: MediaQuery.of(context).size.width / 2 - 50,
          child: Container(
            width: 77,
            height: 77,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mlsalogo1.png'),
              ),

              // border: Border.all(color: Colors.white54, width: 2),
            ),
          )),
      Positioned(
        bottom: MediaQuery.of(context).size.height / 3,
        left: MediaQuery.of(context).size.width / 2 - 57,
        child: Container(
          //width: MediaQuery.of(context).size.width / 4,
          // color: Colors.white,

          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: Duration(seconds: 4),
                builder: (context, value, _) => SizedBox(
                  width: 100,
                  height: 7,
                  child: Container(
                    child: const LinearProgressIndicator(
                      minHeight: 7,
                      color: Color.fromARGB(255, 49, 213, 246),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
