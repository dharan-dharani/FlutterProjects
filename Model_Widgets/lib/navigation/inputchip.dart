import 'package:flutter/material.dart';

class Inputchip extends StatefulWidget {
  const Inputchip({super.key});

  @override
  State<Inputchip> createState() => _InputchipState();
}

class _InputchipState extends State<Inputchip> {
  List<String> languages = [];
  final TextEditingController inputs=TextEditingController();

  formField(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      
      child: Column(
        children: [
          TextFormField(
            
            decoration: InputDecoration(
            enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ) ,
            ),
            controller:inputs,
          ),
          ElevatedButton(onPressed: (){
           setState(() {
             languages.add(inputs.text);
             print(languages);
             inputs.clear();
           });
          }, child: Text("Enter"))
        ],
      ),
      
    );
  }

  chip(){
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: languages.map((language) {
        return InputChip(
          label: Text(language),
          onDeleted: () {
            setState(() {
              languages.remove(language);
            });
          },
        );
      }).toList(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          formField(),
          chip(),
        ],
      ),
    );
  }
}
