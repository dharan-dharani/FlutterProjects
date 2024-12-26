import 'package:flutter/material.dart';

class Language {
  final String name;
  bool isSelected;

  Language(this.name, {this.isSelected = false});
}

class Filterchip extends StatefulWidget {
  const Filterchip({super.key});

  @override
  State<Filterchip> createState() => _FilterchipState();
}

class _FilterchipState extends State<Filterchip> {
  List<Language> languages = [
    Language('Tamil'),
    Language('English'),
    Language('Malayalam')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: languages.map((language) {
              return ChoiceChip(
                label: Text(language.name),
                selected: language.isSelected,
                // onSelected: (bool selected) {
                //   setState(() {
                //     language.isSelected = selected;
                //   });
                // },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
