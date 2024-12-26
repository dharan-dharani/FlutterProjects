import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:malgo_task/views/feedSearch.dart';
import 'views/feedPage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
int selectIndex = 0;

final List<Widget> pages = [
  FeedPage(), // Home Page Content
  FeedSearch(),  // Search Page Content
  Center(child: Text('Messenger')), // Messenger Page Placeholder
  Center(child: Text('Wallet')),    // Wallet Page Placeholder
  Center(child: Text('Attach')),    // Attach Page Placeholder
];
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(70),
          ),
          child: GNav(
              selectedIndex: selectIndex,
              onTabChange: (index) {
                setState(() {
                  selectIndex = index;
                });
              },
              tabs: [
                const GButton(
                  icon: Icons.home,
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                ),
                const GButton(
                  icon: Icons.search,
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                ),
                const GButton(
                  icon: Icons.messenger,
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                ),
                const GButton(
                  icon: Icons.account_balance_wallet_outlined,
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                ),
                const GButton(
                  icon: Icons.attach_file_outlined,
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                )
              ]),
        ),
      ),
    ) ;
  }
}
