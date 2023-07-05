import 'package:flutter/material.dart';

import '../../constant/constants.dart';
import '../../controller/controller.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

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
            appBar: AppBar(
              title: text("Your Coupons", fontWeight: bold),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              // leading: IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.arrow_back),
              // ),
            ),
            backgroundColor: Colors.black,
            body: Center(
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Image.asset('assets/coupons.png'),
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
                    )))),
      ),
    );
  }
}
