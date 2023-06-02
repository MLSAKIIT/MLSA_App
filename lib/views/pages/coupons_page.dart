import 'package:flutter/material.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      AppBar(
                        backgroundColor: Colors.transparent,
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                      const Text(
                        'Your Coupons',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Image.asset('coupons.png'),
                      ),
                      const SizedBox(height: 50),

                      //title
                      const Text(
                        'Oops! seems like you havent participated in any event. Participate to win exciting coupons!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ))));
  }
}
