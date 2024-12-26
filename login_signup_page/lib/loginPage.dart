import 'package:flutter/material.dart';
import 'package:login_signup_page/signupPage.dart';
import 'package:login_signup_page/textstorage/loginPageText.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});
  @override
  _formpage createState() => _formpage();
}

class _formpage extends State<loginPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  void _validateAndLogin() {
    if (_formkey.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => loginPageText(
                  EmailId: _emailcontroller.text,
                  Password: _passwordcontroller.text)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  controller: _emailcontroller,
                                  decoration: InputDecoration(
                                      label: Text(
                                        'Email or Username',
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your username';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  controller: _passwordcontroller,
                                  decoration: InputDecoration(
                                      label: Text(
                                        'Password',
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your username';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 20),
                                OutlinedButton(
                                  onPressed: () {
                                    _validateAndLogin();
                                  },
                                  child: Text(
                                    'Login',
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have a account?"),
                                    SizedBox(width: 10),
                                    Hero(
                                      tag: 'dash',
                                      child: ElevatedButton(
                                        child: Text(
                                          'Signup',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    signupPage()),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
