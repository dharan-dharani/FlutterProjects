import 'package:flutter/material.dart';

class ChipWidgets extends StatefulWidget {
  const ChipWidgets({super.key});

  @override
  State<ChipWidgets> createState() => _ChipWidgetsState();
}

class _ChipWidgetsState extends State<ChipWidgets> {
  void _showChoiceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Choice"),
          content: ChoiceChipDialog(),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip in Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showChoiceDialog,
          child: const Text("Show Choice Dialog"),
        ),
      ),
    );
  }
}

class ChoiceChipDialog extends StatefulWidget {
  @override
  _ChoiceChipDialogState createState() => _ChoiceChipDialogState();
}

class _ChoiceChipDialogState extends State<ChoiceChipDialog> {
  bool isChoiceSelected = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: const Text('Choice Chip'),
      selected: isChoiceSelected,
      onSelected: (bool selected) {
        setState(() {
          isChoiceSelected = selected;
        });
        print(isChoiceSelected);
      },
      selectedColor: Colors.blue.shade100,
      avatar: isChoiceSelected ? const Icon(Icons.check) : null,
    );
  }
}
