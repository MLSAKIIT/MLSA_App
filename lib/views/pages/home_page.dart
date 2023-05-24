import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/mlsa_logo.png', width: 70, height: 70,),
                  Container(
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/mlsa_logo.png', width: 70, height: 70,),
                      )
                    )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
