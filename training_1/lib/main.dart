import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Dharanidharan Sivakumar'),
              accountEmail: Text('dharani@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('DS'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Account Balance'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Wallet'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Indian Bank'),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 243, 237, 237),
        ),
        backgroundColor: Color(0xFF034981),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Color.fromARGB(255, 243, 237, 237),
          ),
          IconButton(
              icon: Icon(Icons.manage_accounts),
              onPressed: () {},
              color: Color.fromARGB(255, 243, 237, 237)),
          IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
              color: Color.fromARGB(255, 243, 237, 237)),
          IconButton(
              icon: Icon(Icons.info),
              onPressed: () {},
              color: Color.fromARGB(255, 243, 237, 237)),
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {},
              color: Color.fromARGB(255, 243, 237, 237)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Color(0xFF034981),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
