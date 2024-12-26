import 'package:flutter/material.dart';

class Signuppagetext extends StatefulWidget {
  final String fname;
  final String lname;
  final String email;
  final String password;
  const Signuppagetext(
      {super.key,
      required this.fname,
      required this.lname,
      required this.email,
      required this.password});
  @override
  _signuptext createState() => _signuptext();
}

class _signuptext extends State<Signuppagetext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column(
        children: [
          Text('${widget.fname}'),
          Text('${widget.lname}'),
          Text('${widget.email}'),
          Text('${widget.password}')
        ],
      ),
    );
  }
}
