import 'package:flutter/material.dart';

class loginPageText extends StatelessWidget {
  final String EmailId, Password;
  const loginPageText({required this.EmailId, required this.Password});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              '$EmailId',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            Text('$Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
