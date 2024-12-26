import 'package:flutter/material.dart';
import 'package:login_signup_page/loginPage.dart';
import 'package:login_signup_page/textstorage/signupPageText.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});
  @override
  _signup createState() => _signup();
}

class _signup extends State<signupPage> {
  final _checker = GlobalKey<FormState>();
  final TextEditingController _fcontroller = TextEditingController();
  final TextEditingController _lcontroller = TextEditingController();
  final TextEditingController _econtroller = TextEditingController();
  final TextEditingController _pcontroller = TextEditingController();

  @override
  void dispose() {
    _fcontroller.dispose();
    _lcontroller.dispose();
    _econtroller.dispose();
    _pcontroller.dispose();
    super.dispose();
  }

  void validationfields() {
    if (_checker.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Signuppagetext(

              fname:_fcontroller.text,
                                               lname:_lcontroller.text,
                                                email:_econtroller.text,
                                                 password:_pcontroller.text,
          )));
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
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          key: _checker,
                          child: Column(
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller: _fcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter your FirstName";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    label: Text(
                                      'Firstname',
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller: _lcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter your LastName";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    label: Text(
                                      'Lastname',
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter your EmailAddress";
                                  }
                                  return null;
                                },
                                controller: _econtroller,
                                decoration: InputDecoration(
                                    label: Text(
                                      'Email',
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter your Password";
                                  }
                                  return null;
                                },
                                controller: _pcontroller,
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
                              ),
                              SizedBox(height: 20),
                              OutlinedButton(
                                onPressed: () {
                                  validationfields();
                                },
                                child: Text(
                                  'Signup',
                                ),
                              ),
                              SizedBox(height: 20),
                              Hero(
                                tag: 'dash',
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => loginPage( )),
                                      );
                                    },
                                    child: Text('Back to login Page')),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
