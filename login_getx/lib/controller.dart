import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final formkey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  var UserName = ''.obs;
  var Password = ''.obs;

  void login() {
    if (formkey.currentState!.validate()) {
      Get.snackbar("Success", "Login Successful");
      Get.toNamed('/home',
          arguments: {'username': UserName.value, 'password': Password.value});
    }
  }

  @override
  void onClose() {
    username.dispose();
    password.dispose();
    super.onClose();
  }
}
