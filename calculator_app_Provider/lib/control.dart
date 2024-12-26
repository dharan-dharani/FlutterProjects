import 'package:flutter/material.dart';

class control extends ChangeNotifier {
  String input = "0";
  dynamic num1 = 0;
  dynamic num2 = 0;
  String operand = "";
  String result = "0";

  calculation(String bvalue) {
    if (bvalue == "AC") {
      num1 = 0;
      num2 = 0;
      operand = "";
      input = "0";
      result = "0";
      notifyListeners();
    } else if (bvalue == "+" ||
        bvalue == "-" ||
        bvalue == "x" ||
        bvalue == "/" ||
        bvalue == "%") {
      num1 = double.parse(input);
      operand = bvalue;
      input = "";
       notifyListeners();
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
       notifyListeners();
    } else if (bvalue == "C") {
      input = input.length > 1 ? input.substring(0, input.length - 1) : "0";
       notifyListeners();
    } else {
      input = input == "0" ? bvalue : input + bvalue;
       notifyListeners();
    }

    result = input;
     notifyListeners();
  }
  
}
