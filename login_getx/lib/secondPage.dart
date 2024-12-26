import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secondpage extends StatefulWidget {
  Secondpage({super.key});
  @override
  display createState() => display();
}

class display extends State<Secondpage> {
  Map<String, String> userdetails = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        //color: Colors.blueAccent,
        child: Column(
          children: [
            Text('UserName is : ${userdetails['username']}'),
            SizedBox(height: 20),
            Text("Password is: ${userdetails['password']}"),
          ],
        ),
      ),
    );
  }
}
