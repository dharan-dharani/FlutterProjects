import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx/controller.dart';

class mainPage extends StatelessWidget {
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 300,
          width: 300,
          child: Form(
            key: controller.formkey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text('Vision Tech',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: controller.username,
                    onChanged: (value) => controller.UserName.value = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'UserName',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: controller.password,
                    obscureText: true,
                    onChanged: (value) => controller.Password.value = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: controller.login,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
