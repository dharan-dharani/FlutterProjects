import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String firstName,lastName,email,phoneNo,city,gender;
  final List<String> selectedItems;

  const Display({super.key, required this.selectedItems, required this.gender,required this.city, required this.firstName,required this.lastName,required this.email,required this.phoneNo});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [

          Text(
            firstName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          Text(lastName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text(
            '$email',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          Text('$phoneNo',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

          Text(
            '$city',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          Text('$gender',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

          Container(
            height: 400,
            width: 300,

            child: ListView.builder(
              itemCount: selectedItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(selectedItems[index]),
                );
              },
            ),
          )

        ],
      ),
    );
  }
}
