import 'package:calculator_app/control.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UI extends StatefulWidget {
  const UI({super.key});
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<UI> {
  final control Control = Get.put(control());


  Widget button(String bvalue,Color bcolor) {
    return
      ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: bcolor),
          onPressed: (){ Control.calculation(bvalue);},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              bvalue,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.white),
            ),
          ));
  }

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
               height: height*0.3,

              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.bottomRight,
              child: Obx(()=> Text(
               Control.result.value,
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),),
            Container(
                height: height*0.595,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button("AC",Colors.greenAccent),
                          button("C",Colors.greenAccent),
                          button("%",Colors.deepOrangeAccent),
                          button("/",Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button("7",Colors.white60),
                          button("8",Colors.white60),
                          button("9",Colors.white60),
                          button("x",Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button("4",Colors.white60),
                          button("5",Colors.white60),
                          button("6",Colors.white60),
                          button("-",Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button("1",Colors.white60),
                          button("2",Colors.white60),
                          button("3",Colors.white60),
                          button("+",Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button("00",Colors.white60),
                          button("0",Colors.white60),
                          button(".",Colors.deepOrangeAccent),
                          button("=",Colors.deepOrangeAccent),
                        ],
                      )
                    ],
                  ),
                )
          ],
        ),

    );
  }
}
