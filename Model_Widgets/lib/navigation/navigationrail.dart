import 'package:flutter/material.dart';
import 'package:model_widgets/navigation/choicechip.dart';
import 'package:model_widgets/navigation/filterchip.dart';
import 'package:model_widgets/navigation/inputchip.dart';

class NavigationRails extends StatefulWidget {
  const NavigationRails({super.key});

  @override
  State<NavigationRails> createState() => _NavigationRailsState();
}

class _NavigationRailsState extends State<NavigationRails> {
  int selected=0;
  List<Widget> pages=[
    Inputchip(),
    Choicechip(),
  Filterchip(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('HomePage',style: TextStyle(color: Colors.white),),
      ),
      body: Row(
        children: [
          NavigationRail(
              selectedIndex: selected,
      onDestinationSelected: (int index){
                setState(() {
                  selected=index;
                });
      },
            labelType: NavigationRailLabelType.selected,
      destinations: const [
            NavigationRailDestination(icon: Icon(Icons.home),
                label: Text('InputChip')),
            NavigationRailDestination(icon: Icon(Icons.person),
                label: Text('ChoiceChip')),
            NavigationRailDestination(icon: Icon(Icons.delete),
                label: Text('FilterChip')),
            // NavigationRailDestination(icon: Icon(Icons.settings),
            //     label: Text('ActionChip'))

          ],
          ),
          Expanded(child: pages[selected])
        ],
      ),
    );
  }
}
