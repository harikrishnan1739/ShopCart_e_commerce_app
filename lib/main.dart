import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/productlistpage.dart';
import 'package:untitled/search.dart';
import 'package:untitled/signup.dart';
import 'package:untitled/splashscreen.dart';
import 'package:untitled/varificationpage.dart';
import 'package:get_storage/get_storage.dart';
import 'homepage.dart';
import 'loginPage.dart';

import 'httptesting.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllProductListPage(),
    );
  }
}
