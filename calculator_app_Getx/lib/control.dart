import 'package:get/get.dart';

class control extends GetxController{
  dynamic input = "0".obs;
  dynamic num1 = 0.obs;
  dynamic num2 = 0.obs;
  dynamic operand = "".obs;
  dynamic result = "0".obs;

   calculation(String bvalue) {
    if (bvalue == "AC") {
      num1.value = 0;
      num2.value = 0;
      operand.value = "";
      input.value = "0";
      result.value = "0";
    } else if (bvalue == "+" ||
        bvalue == "-" ||
        bvalue == "x" ||
        bvalue == "/" ||
        bvalue == "%") {
      num1.value = int.parse(input.value);
      operand.value = bvalue;
      input.value = "";
    } else if (bvalue == "=") {
      num2.value = int.parse(input.value);
      if (operand == "+") {
        result.value = (num1.value + num2.value).toString();
      } else if (operand == "-") {
        result.value = (num1.value - num2.value).toString();
      } else if (operand == "x") {
        result.value = (num1.value * num2.value).toString();
      } else if (operand == "/") {
        result.value = num2.value != 0 ? (num1.value / num2.value).toString() : 0.toString();
      } else if (operand == "%") {
        result.value = num2.value != 0 ? (num1.value % num2.value).toString() : 0.toString();
      }
      input.value = result.value;
    } else if (bvalue == "C") {
      input.value = input.value.length > 1 ? input.value.substring(0, input.value.length - 1) : "0";
    } else {
      input.value = input.value == "0" ? bvalue : input.value + bvalue;
    }
   
      result.value = input.value;
    
  }


}