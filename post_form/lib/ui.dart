import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Ui extends StatefulWidget {
  const Ui({super.key});

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  final  keys=GlobalKey<FormState>();
  final TextEditingController user_name=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController mobile=TextEditingController();
  final TextEditingController password=TextEditingController();

  Future<void> submitData() async {
    if (!keys.currentState!.validate()) {
      return;
    }

    // Prepare data to be sent
    final data = {
      "user_name": user_name.text,
      "email": email.text,
      "mobile": mobile.text,
      "password": password.text,
    };
    var body =json.encode(data);
print(body);
    try {
      print('object');
      final response = await http.post(
        Uri.parse('http://192.168.0.20:3000/user/registration'), // Replace with your endpoint
        headers: {'Content-Type': 'application/json'},
        body:body ,
      );

      if (response.statusCode == 200) {
        // Data was successfully submitted
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration successful!')),
        );
      } else {
        // Handle error response
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration failed: ${response.reasonPhrase}')),
        );
      }
    } catch (e) {
      print('Error submitting data: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error submitting data')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
      ),
      body: Center(
        child: Container(
          width: 500,
          child: Form(
              key: keys,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  TextFormField(
                    controller: user_name,
                    decoration: InputDecoration(
                        label: const Text('Enter your Name'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    validator: (value){
                      if( value==null||value.isEmpty)
                      {
                        return 'Please Enter a Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        label: const Text('Enter your Email'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    validator: (value){
                      if( value==null||value.isEmpty)
                      {
                        return 'Please Enter a Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: mobile,
                    decoration: InputDecoration(
                        label: const Text('Enter your MobileNumber'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    validator: (value){
                      if( value==null||value.isEmpty)
                      {
                        return 'Please Enter a MobilNumber';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        label: const Text('Enter your Password'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    validator: (value){
                          if( value==null||value.isEmpty)
                            {
                              return 'Please Enter a password';
                            }
                          return null;
                    },
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(onPressed: (){
                        setState(() {
                          user_name.clear();
                          email.clear();
                          mobile.clear();
                          password.clear();
                        });
                      }, child: Text('Reset')),
                      ElevatedButton(onPressed: (){
                        submitData();
                      }, child: Text('Submit'))
                    ],
                  )
                ],
              )),
        )
      ),
    );
  }
}
