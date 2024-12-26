import 'package:flutter/material.dart';

class Dateandtimepickers extends StatefulWidget {
  const Dateandtimepickers({super.key});

  @override
  State<Dateandtimepickers> createState() => _DateandtimepickersState();
}

class _DateandtimepickersState extends State<Dateandtimepickers> {
  DateTime? selectDate;
  TimeOfDay? selectTime;

  Future<void> date(BuildContext context)async{
    final DateTime? pick=await showDatePicker(context: context,
        firstDate: DateTime(2000), lastDate: DateTime(2025));
    setState(() {
      selectDate=pick;
    });
  }

  Future<void> time(BuildContext context)async{
    final TimeOfDay? pick=await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      selectTime=pick;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
    child: Column(
      children: [
        ElevatedButton(onPressed: (){date(context);}, child: Text('Pick a date')),
        ElevatedButton(onPressed: (){time(context);}, child: Text('Pick a time')),
      ],
    )
      ),
    );
  }
}
