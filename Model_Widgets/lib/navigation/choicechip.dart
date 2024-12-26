import 'package:flutter/material.dart';

class Language {
  final String name;

  Language(this.name);
}

class Choicechip extends StatefulWidget {
  const Choicechip({super.key});

  @override
  State<Choicechip> createState() => _ChoicechipState();
}

class _ChoicechipState extends State<Choicechip> {
  List<Language> languages = [
    Language('Tamil'),
    Language('English'),
    Language('Malayalam')
  ];

  int? selectedLanguageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: List<Widget>.generate(languages.length, (index) {
              print(index);

              return FilterChip(
                label: Text(languages[index].name),
                selected: selectedLanguageIndex == index,

                onSelected: (bool selected) {
                  setState(() {
                    selectedLanguageIndex = selected ? index : null;
                  });
                  print(selectedLanguageIndex);
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
