import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? selected;
  final List<String> electronics=['Laptop','MobilePhone','Keyboard'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            border: Border.all(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.circular(8),

          ),
          child: DropdownButton<String>(
              value: selected,
              isExpanded: true,
              underline: const SizedBox(),
              items: electronics.map((String item){
            return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
            );
          }).toList(), onChanged: (String? newValue){
                setState(() {
                  selected=newValue;
                });
          }),
        ),
      ),
    );
  }
}
