import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx/mainPage.dart';
import 'package:login_getx/secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => mainPage()),
        GetPage(name: '/home', page: () => Secondpage()),
      ],
    );
  }
}
