import 'package:Detailform/display.dart';
import 'package:flutter/material.dart';

class Detailform extends StatefulWidget {
  const Detailform({super.key});

  @override
  Detailforms createState() => Detailforms();
}

class CheckboxItem {
  String text;
  bool isCheck;

  CheckboxItem({required this.text, this.isCheck = false});
}

class Detailforms extends State<Detailform> {
  final GlobalKey<FormState> keys = GlobalKey<FormState>();

  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNo = TextEditingController();
  String? selected;
  String? gender;
  String? selectedItems;
  List<CheckboxItem> checkboxItems = [
    CheckboxItem(text: "Madurai"),
    CheckboxItem(text: "Chennai"),
    CheckboxItem(text: "Trichy"),
    CheckboxItem(text: "Coimbatore"),
    CheckboxItem(text: "Karur"),
  ];

  pressed(){
    List<String> selectedItems = checkboxItems
        .where((item) => item.isCheck)
        .map((item) => item.text)
        .toList();
    return selectedItems;
  }


  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    email.dispose();
    phoneNo.dispose();
    super.dispose();
  }

  Widget textWidgets(String name, TextEditingController control) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: control,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter your $name';
          }
          return null;
        },
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            label: Text(name),
            labelStyle: const TextStyle(color: Colors.black),
            hintText: 'Enter your $name'

        ),
      ),
    );
  }


  final List<String> places = [
    'Madurai',
    'Coimbatore',
    'Trichy',
    'Tirunelveli'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Form', style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),),),
      body: SingleChildScrollView(
        child: Form(
          key: keys,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              textWidgets('FirstName', firstName),
              const SizedBox(height: 10),
              textWidgets('LastName', lastName),
              const SizedBox(height: 10),
              textWidgets('Email', email),
              const SizedBox(height: 10),
              textWidgets('PhoneNo', phoneNo),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your City';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      label: const Text('City'),
                      labelStyle: const TextStyle(color: Colors.black),

                    ),
                    value: selected,
                    items: places.map((String place) {
                      return DropdownMenuItem(

                          value: place,
                          child: Text(place));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selected = newValue;
                      });
                    }),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Choose your Gender',
                  style: TextStyle(color: Colors.black, fontSize: 15),),
              ),
              Row(
                children: [
                  SizedBox(

                    width: 150,
                    child: ListTile(
                      leading: Radio<String>(value: 'Male',
                          groupValue: gender,
                          onChanged: (String? value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                      title: const Text('Male'),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: ListTile(
                      leading: Radio<String>(value: 'Female',
                          groupValue: gender,
                          onChanged: (String? value) {
                            setState(() {
                              gender = value;

                            });

                          }
                          ),
                      title: const Text('Female'),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Relocate ',
                  style: TextStyle(color: Colors.black, fontSize: 15),),
              ),
            Container(
              height: 400,
              width: 500,
              color: Colors.greenAccent,
              child: ListView(
                  children: checkboxItems.map((item) {
                    return CheckboxListTile(
                      title: Text(item.text),
                      value: item.isCheck,
                      onChanged: (bool? value) {
                        setState(() {
                          item.isCheck = value!;
                        });
                      },
                    );
                  }
                  ).toList()),
            ),

            Row(
                 children: [
                  const SizedBox(width: 12),
                  ElevatedButton(
                      onPressed: (){
        firstName.clear();
        lastName.clear();
        email.clear();
        phoneNo.clear();
        setState(() {
          selected = null;
          gender = null;
        });
      }, style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: const Text(
                        'Reset', style: TextStyle(color: Colors.black),)),
                  const SizedBox(width: 30),
                  ElevatedButton(onPressed: () {
                    if (keys.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),

                      );

                      print(gender);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Display(
                        firstName:firstName.text,
                        lastName:lastName.text,
                        email:email.text,
                        phoneNo:phoneNo.text,
                        city:selected.toString(),
                        selectedItems: pressed(),
                        gender:gender.toString(),
                      )));
                    }
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      child: const Text(
                          'Submit', style: TextStyle(color: Colors.white))),
                  const SizedBox(height: 100),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}