import 'package:flutter/material.dart';
class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? selectOption;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              ListTile(
                title:const Text('Choose1'),
                leading: Radio(value: 'Choose1', groupValue: selectOption, onChanged: (String? newValue){
                  setState(() {
                     selectOption=newValue;
                  });
                }),

                
              ),
              ListTile(
                title: Text('Choose2'),
                leading: Radio(value: 'Choose2', groupValue: selectOption, onChanged: (String? newValue){
                  setState(() {
                    selectOption=newValue;
                  });
                }),
              ),
              ListTile(
                title: Text('Choose3'),
                leading: Radio(value: 'Choose3', groupValue: selectOption, onChanged: (String? newValue){
                  setState(() {
                    selectOption=newValue;
                  });
                }),
              ),
              ListTile(
                title: Text('Choose4'),
                leading: Radio(value: 'Choose4', groupValue: selectOption, onChanged: (String? newValue){
                  setState(() {
                    selectOption=newValue;
                  });
                }),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
