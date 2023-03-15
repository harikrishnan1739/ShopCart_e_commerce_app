import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'bottomnavigatorpage.dart';



void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    defaultTransition: Transition.fade,
    getPages: [
      GetPage(
        name: '/home',
        page: () => BottomNavigationbarPage(),
        binding: HomeBinding(),
      ),
    ],
  ));
}
