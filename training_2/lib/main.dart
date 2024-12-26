import 'package:flutter/material.dart';

void main() =>
    runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _Mystate createState() => _Mystate();
}

class _Mystate extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Container(
            width: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Center(
                        child: Text(
                          'Masfob',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 185, 183, 183),
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 183, 183)),
                      ),
                      onTap: () {}),
                  ListTile(
                      leading: Icon(
                        Icons.view_comfy_alt,
                        color: Color.fromARGB(255, 185, 183, 183),
                      ),
                      title: Text('Project',
                          style: TextStyle(
                              color: Color.fromARGB(255, 185, 183, 183))),
                      onTap: () {},
                      trailing: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 214, 214, 214),
                          ),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.add)))),
                  ListTile(
                      leading: Icon(
                        Icons.task,
                      ),
                      title: Text('Task'),
                      onTap: () {},
                      trailing: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 214, 214, 214),
                          ),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.add)))),
                  ListTile(
                    leading: Icon(
                      Icons.workspaces,
                      color: Color.fromARGB(255, 185, 183, 183),
                    ),
                    title: Text('Team',
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 183, 183))),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 185, 183, 183),
                    ),
                    title: Text('Settings',
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 183, 183))),
                    onTap: () {},
                  ),
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFDDD8D8), Colors.white])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Upgrade to pro',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Get 1 Month free and unlock',
                            style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF6D6A6A)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 119, 167, 250),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Upgrade',
                                  style: TextStyle(color: Colors.black),
                                ))),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.error,
                      color: Color.fromARGB(255, 185, 183, 183),
                    ),
                    title: Text('Help & Information',
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 183, 183))),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Color.fromARGB(255, 185, 183, 183),
                    ),
                    title: Text('Logout',
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 183, 183))),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          VerticalDivider(
            width: 0.20,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: SingleChildScrollView(
              child: Container(
                width: 700,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 540,
                                child: Text(
                                  'Hello,Masfob',
                                  style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '18 May, 2019',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 214, 214, 214),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.calendar_today),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              child: Text(
                                'Track team progress work,you almost reach a goal',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0.20,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color.fromARGB(
                                        255, 206, 206, 206),
                                  ),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.recommend_rounded)),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Finished',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            '18%',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            size: 30,
                                            color: Color.fromARGB(
                                                255, 59, 240, 216),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '+18 Tasks',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 59, 240, 216),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: 0.20,
                              endIndent: 1.0,
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color.fromARGB(
                                          255, 206, 206, 206),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.timer))),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Tracked',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            '31h',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_drop_up,
                                            size: 30,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '-6 hours',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: 0.20,
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color.fromARGB(
                                        255, 206, 206, 206),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.trending_up_rounded),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Efficiency',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            '93%',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            size: 30,
                                            color: Color.fromARGB(
                                                255, 59, 240, 216),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '12%',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 59, 240, 216),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 0.20,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Performance',
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: TextButton(
                            child: Text(
                              '1-May-2014',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: 650,
                        child: Image(image: AssetImage('graph.png')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Divider(
                        height: 0.20,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    'Current Task',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 25),
                                VerticalDivider(
                                  width: 0.20,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 25),
                                Container(
                                  child: Text(
                                    'Done 30%',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: TextButton(
                                child: Text(
                                  'Weak',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5, right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 143, 195, 238),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.trending_up_rounded),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      width: 230,
                                      child: Text(
                                        'Product review for market',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 4,
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      child: Text(
                                        'In Progress',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Row(
                                  children: [
                                    Container(
                                      // decoration: boxdecoration,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.schedule),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '8h',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5, right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(243, 136, 129, 1)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.search_rounded),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      width: 230,
                                      child: Text(
                                        'UX/UI research for product',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.orange,
                                      radius: 4,
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      child: Text(
                                        'Hold',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Row(
                                  children: [
                                    Container(
                                      // decoration: boxdecoration,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.schedule),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '6h',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5, right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 189, 188, 188),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.terminal),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      width: 230,
                                      child: Text(
                                        'App design and development',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 4,
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      child: Text(
                                        'Done',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Row(
                                  children: [
                                    Container(
                                      // decoration: boxdecoration,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.schedule),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '4h',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          VerticalDivider(
            width: 0.20,
            color: Colors.grey,
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 240, 242, 245),
                        ),
                        width: 300,
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage("vijay.jpg"),
                                      radius: 50,
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 28,
                                        child: CircleAvatar(
                                          radius: 6,
                                          backgroundColor: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  child: Text(
                                    'Masfob',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '@masfob',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 214, 214, 214),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.call),
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 214, 214, 214),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.videocam),
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 214, 214, 214),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.more_vert),
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Row(
                      children: [
                        Container(
                          width: 115,
                          child: Divider(height: 15),
                        ),
                        SizedBox(height: 15),
                        Container(
                            width: 70,
                            child: Center(
                              child: Text(
                                'Activity',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                        SizedBox(height: 15),
                        Container(
                          width: 115,
                          child: Divider(height: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 300,
                                child: ListTile(
                                  leading: Container(
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage("tony.jpg"),
                                          radius: 20,
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 5,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.red,
                                            radius: 5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tony',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '10.53AM',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  subtitle: Text(
                                    'Commented on Stark project',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Card(
                              color: Color(0xFF9ACFE7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 40,
                                  width: 200,
                                  child: Text(
                                    'Hi, This is Tony start a new task',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("peter.webp"),
                                        radius: 20,
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 5,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.red,
                                            radius: 5,
                                          ))
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 250,
                                      child: ListTile(
                                        title: Text(
                                          'Peter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        subtitle: Text(
                                          'Commented on Stark project',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 100, top: 4),
                            child: Card(
                              color: Color(0xFF9ACFE7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 20,
                                  width: 150,
                                  child: Text(
                                    'Lets Go...',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("Steve.webp"),
                                        radius: 20,
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 5,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 250,
                                      child: ListTile(
                                        title: Text(
                                          'Steve',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        subtitle: Text(
                                          'Commented on shield project',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color.fromARGB(255, 231, 230, 230),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.attachment_outlined)),
                                      Container(
                                          child: Text(
                                        'Write a message',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic),
                                      )),
                                      SizedBox(width: 70),
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.sentiment_satisfied)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.mic)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
