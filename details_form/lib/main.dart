import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => (runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _formState createState() => _formState();
}

class _formState extends State<MyApp> {
  final _keyvalue = GlobalKey<FormState>();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  TextEditingController selectdate = TextEditingController();

  String? selectstate;
  Future<void> _datetimepicker(BuildContext context) async {
    final DateTime? select = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2100));
    if (select != null) {
      setState(() {
        selectdate.text = DateFormat('dd/MM/yyyy').format(select);
      });
    }
  }

  List<String> items = [
    'Madurai',
    'Chennai',
    'Bangalore',
    'Kerala',
    'Coimbatore'
  ];

  @override
  void initState() {
    super.initState();
    fname.addListener(_clearErrorOnTyping);
    lname.addListener(_clearErrorOnTyping);
    email.addListener(_clearErrorOnTyping);
    selectdate.addListener(_clearErrorOnTyping);
  }

  void _clearErrorOnTyping() {
    if (_keyvalue.currentState?.validate() == false) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _keyvalue,
          child: Center(
            child: Container(
              width: 400,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: fname,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Firstname';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'First Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: lname,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Lastname';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: email,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email Id';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Email Id',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: selectdate,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Date of Birth';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Date of Birth',
                          suffixIcon: IconButton(
                              onPressed: () {
                                _datetimepicker(context);
                              },
                              icon: Icon(Icons.calendar_month_outlined)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(height: 20),
                    DropdownButtonFormField<String>(
                      value: selectstate,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Current state';
                        }
                        return null;
                      },
                      onChanged: (String? newValue) {
                        setState(() {
                          selectstate = newValue;
                        });
                      },
                      items:
                          items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                          labelText: 'State',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          if (_keyvalue.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Submitted your form')));
                          }
                        },
                        child: Text('Submit'))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
