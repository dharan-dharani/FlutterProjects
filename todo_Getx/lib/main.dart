import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_web/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
