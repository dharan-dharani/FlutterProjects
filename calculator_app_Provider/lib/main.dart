import 'package:calculator_app/control.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/ui.dart';

import 'package:provider/provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   ChangeNotifierProvider(create: (context)=>control(),
    
   child:  MaterialApp(
       debugShowCheckedModeBanner: false,
      home: UI(),
    ));
  }
}
