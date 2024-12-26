import 'package:flutter/material.dart';

class UI extends StatefulWidget {
  const UI({super.key});
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<UI> {
  String input = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";
  String result = "0";

  Widget button(String bvalue) {
    return InkWell(
        onTap: () {
          calculation(bvalue);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            bvalue,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ));
  }

  calculation(String bvalue) {
    if (bvalue == "AC") {
      num1 = 0;
      num2 = 0;
      operand = "";
      input = "0";
      result = "0";
    } else if (bvalue == "+" ||
        bvalue == "-" ||
        bvalue == "x" ||
        bvalue == "/" ||
        bvalue == "%") {
      num1 = double.parse(input);
      operand = bvalue;
      input = "";
    } else if (bvalue == "=") {
      num2 = double.parse(input);
      if (operand == "+") {
        result = (num1 + num2).toString();
      } else if (operand == "-") {
        result = (num1 - num2).toString();
      } else if (operand == "x") {
        result = (num1 * num2).toString();
      } else if (operand == "/") {
        result = num2 != 0 ? (num1 / num2).toString() : 0.toString();
      } else if (operand == "%") {
        result = num2 != 0 ? (num1 % num2).toString() : 0.toString();
      }
      input = result;
    } else if (bvalue == "C") {
      input = input.length > 1 ? input.substring(0, input.length - 1) : "0";
    } else {
      input = input == "0" ? bvalue : input + bvalue;
    }
    setState(() {
      result = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 450,
          decoration: BoxDecoration(
            color: Colors.teal[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 150,
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  result,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  height: 350,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            button("AC"),
                            button("C"),
                            button("%"),
                            button("/"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            button("7"),
                            button("8"),
                            button("9"),
                            button("x"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            button("4"),
                            button("5"),
                            button("6"),
                            button("-"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            button("1"),
                            button("2"),
                            button("3"),
                            button("+"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            button("00"),
                            button("0"),
                            button("."),
                            button("="),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
