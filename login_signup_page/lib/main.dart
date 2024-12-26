import 'package:flutter/material.dart';
import 'package:login_signup_page/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}
