// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/views/homepage.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: HomePage(),
      
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/controller.dart';
import 'package:flutter_application_2/views/homepage.dart';
import 'package:get/get.dart';

void main() {
  Get.put(UserController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'API intergration demo',
      home:const HomePage(),
    );
  }
}