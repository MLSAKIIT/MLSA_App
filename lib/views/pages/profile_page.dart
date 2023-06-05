// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController rollnoController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController branchController = TextEditingController();
//   //final int index = 1;

//   @override
//   Widget build(BuildContext context) {
//     var deviceData = MediaQuery.of(context);
//     return Scaffold(
//       backgroundColor: Colors.black12,
//       appBar: AppBar(
//         backgroundColor: Colors.black12,
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.arrow_back_sharp),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: 1,
//         itemBuilder: (context, index) {
//           return const Fields(
//             nameController: null,
//             rollnoController: null,
//             emailController: null,
//             mobileController: null,
//             branchController: null,
//           );
//         },
//       ),
//     );
//   }
// }

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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var deviceData = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_sharp),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return const Fields(
            nameController: null,
            rollnoController: null,
            emailController: null,
            mobileController: null,
            branchController: null,
          );
        },
      ),
    );
  }
}

class Fields extends StatelessWidget {
  final nameController;
  final rollnoController;
  final emailController;
  final mobileController;
  final branchController;

  const Fields({
    super.key,
    required this.nameController,
    required this.rollnoController,
    required this.emailController,
    required this.mobileController,
    required this.branchController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 47,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 51, 204, 255), width: 1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
            left: 30,
            top: 12,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10, left: 2.0, right: 2.0),
              color: Colors.black,
              child: const Text(
                'Name',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                bottom: 10, left: 40.0, right: 2.0, top: 20),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: nameController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 47,
            margin: const EdgeInsets.fromLTRB(20, 100, 20, 10),
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 51, 204, 255), width: 1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
            left: 30,
            top: 92,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10, left: 2.0, right: 2.0),
              color: Colors.black,
              child: const Text(
                'Roll No.',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 80, 20, 40),
            padding: const EdgeInsets.only(
                bottom: 10, left: 40.0, right: 2.0, top: 20),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: rollnoController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 47,
            margin: const EdgeInsets.fromLTRB(20, 180, 20, 10),
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 51, 204, 255), width: 1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
            left: 30,
            top: 172,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10, left: 2.0, right: 2.0),
              color: Colors.black,
              child: const Text(
                'E-mail',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 160, 20, 40),
            padding: const EdgeInsets.only(
                bottom: 10, left: 40.0, right: 2.0, top: 20),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: emailController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 47,
            margin: const EdgeInsets.fromLTRB(20, 260, 20, 10),
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 51, 204, 255), width: 1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
            left: 30,
            top: 252,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10, left: 2.0, right: 2.0),
              color: Colors.black,
              child: const Text(
                'Mobile',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 240, 20, 40),
            padding: const EdgeInsets.only(
                bottom: 10, left: 40.0, right: 2.0, top: 20),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: mobileController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 47,
            margin: const EdgeInsets.fromLTRB(20, 340, 20, 10),
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 51, 204, 255), width: 1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
            left: 30,
            top: 332,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10, left: 2.0, right: 2.0),
              color: Colors.black,
              child: const Text(
                'Branch',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 320, 20, 40),
            padding: const EdgeInsets.only(
                bottom: 10, left: 40.0, right: 2.0, top: 20),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: branchController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
