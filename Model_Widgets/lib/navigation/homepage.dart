import 'package:flutter/material.dart';
import 'package:model_widgets/navigation/choicechip.dart';
import 'package:model_widgets/navigation/filterchip.dart';
import 'package:model_widgets/navigation/inputchip.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _selectedWidget = Container(); // Initial empty widget

  void _selectWidget(Widget widget) {
    setState(() {
      _selectedWidget = widget;
    });
    Navigator.pop(context); // Close the drawer after selecting
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'HomePage',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('InputChip'),
              onTap: () {
                _selectWidget(Inputchip());
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('ChoiceChip'),
              onTap: () {
                _selectWidget(Choicechip());
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('FilterChip'),
              onTap: () {
                _selectWidget(Filterchip());
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('ActionChip'),
              onTap: () {
                _selectWidget(ActionChip(
                  label: const Text('ActionChip Example'),
                  onPressed: () {},
                ));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _selectedWidget, // Display the selected widget here
      ),
    );
  }
}
