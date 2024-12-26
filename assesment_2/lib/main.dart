import 'package:flutter/material.dart';

void main() =>
    runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _stateme createState() => _stateme();
}

class _stateme extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.ac_unit_outlined),
                      title: Text(
                        'logip',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        'Home',
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.folder_special_rounded,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Projects',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.task_outlined,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Tasks',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.message,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Team',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 270,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.grey, Colors.white],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Upgrade to pro',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '   Get 1month free and\n unlock  all pro features',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Upgrade',
                                    style: TextStyle(color: Colors.black),
                                  )))
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.error,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Help & Information',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.logout_rounded,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 6.0, right: 10, left: 6),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          width: double.infinity,
                          height: 65,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 250,
                                    child: ListTile(
                                      leading: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundImage:
                                                AssetImage('img1.jpg'),
                                          ),
                                          Positioned(
                                              right: 5,
                                              bottom: 0,
                                              child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor: Colors.red,
                                              ))
                                        ],
                                      ),
                                      title: Text(
                                        'Margaret Fletcher',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text('Project Manger'),
                                    ),
                                  ),
                                  VerticalDivider(indent: 20, endIndent: 20),
                                  TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(Icons.calendar_today_outlined),
                                          SizedBox(width: 5),
                                          Text('27 FEB')
                                        ],
                                      )),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(15)),
                                width: 300,
                                height: 40,
                                child: Row(
                                  children: [
                                    Icon(Icons.search),
                                    SizedBox(width: 10),
                                    Text("Search")
                                  ],
                                ),
                              ),
                              Icon(Icons.add_alert_rounded),
                              Icon(Icons.message),
                            ],
                          )),
                    ),
                    Container(
                      width: 1012,
                      height: 570,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            width: 500,
                            height: 550,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 6),
                                  Container(
                                    height: 200,
                                    width: 480,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundImage:
                                                  AssetImage('img2.jpg'),
                                            ),
                                            Positioned(
                                                right: 7,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  radius: 5,
                                                  backgroundColor: Colors.red,
                                                ))
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Megan Norton',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('@megannorton'),
                                        SizedBox(height: 10),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.phone)),
                                            SizedBox(width: 10),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    Icons.camera_alt_rounded)),
                                            SizedBox(width: 10),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.more_vert))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    width: 470,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Divider(height: 15),
                                        ),
                                        SizedBox(height: 15),
                                        Container(
                                            width: 70,
                                            child: Center(
                                              child: Text(
                                                'Today',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                        SizedBox(height: 15),
                                        Container(
                                          width: 200,
                                          child: Divider(height: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue[100],
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          height: 60,
                                          width: 280,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                'Hi,Next week we will start a new project'),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 200),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[100],
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            height: 45,
                                            width: 280,
                                            child: ListTile(
                                              leading: Icon(Icons
                                                  .slow_motion_video_rounded),
                                              title:
                                                  Text('voice message   0.35'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue[100],
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          height: 40,
                                          width: 280,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                'Tomorrow Meeting link.....'),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue[100],
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          height: 60,
                                          width: 280,
                                          child: ListTile(
                                            leading:
                                                Icon(Icons.video_chat_rounded),
                                            title:
                                                Text('Project onboarding...'),
                                            subtitle:
                                                Text('.com/meeting/google'),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey[100],
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          height: 40,
                                          width: 470,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.attachment),
                                              Container(
                                                  width: 380,
                                                  child:
                                                      Text('Write a message')),
                                              Icon(Icons
                                                  .sentiment_satisfied_alt_outlined),
                                              Icon(Icons.mic)
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
                          Container(
                            width: 512,
                            child: Column(
                              children: [
                                SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 500,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        child: ListTile(
                                          title: Text(
                                            'Team',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage:
                                                  AssetImage('img3.jpg'),
                                            ),
                                            Positioned(
                                                right: 5,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  radius: 3,
                                                  backgroundColor: Colors.green,
                                                ))
                                          ],
                                        ),
                                        title: Text(
                                          'Billy Parker',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text('Project Manager',
                                            style: TextStyle(fontSize: 12)),
                                        trailing: Icon(Icons.message),
                                      ),
                                      
                                      ListTile(
                                        leading: Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage:
                                                  AssetImage('img4.jpg'),
                                            ),
                                            Positioned(
                                                right: 5,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  radius: 3,
                                                  backgroundColor: Colors.red,
                                                ))
                                          ],
                                        ),
                                        title: Text(
                                          'Nancy Salmon',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text('Sales Manager',
                                            style: TextStyle(fontSize: 12)),
                                        trailing: Icon(Icons.message),
                                      ),
                                      ListTile(
                                        leading: Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage:
                                                  AssetImage('img5.jpg'),
                                            ),
                                            Positioned(
                                                right: 5,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  radius: 3,
                                                  backgroundColor:
                                                      Colors.yellow,
                                                ))
                                          ],
                                        ),
                                        title: Text(
                                          'Stella Maxwell',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text('UI/UX Designer',
                                            style: TextStyle(fontSize: 12)),
                                        trailing: Icon(Icons.message),
                                      ),
                                      Divider(
                                        indent: 20,
                                        endIndent: 20,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.add),
                                        title: Text(
                                          'Invite new team member',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 6),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 500,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        child: ListTile(
                                          title: Text(
                                            'Meeting',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          'Project onboarding',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text(
                                          'Add Describtion of your meeting',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 470,
                                        child: ListTile(
                                          leading: Icon(Icons.alarm),
                                          title: Text(
                                            '11.00 - 12.30',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Icon(Icons.more_vert),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 470,
                                        child: ListTile(
                                          leading: Icon(
                                              Icons.calendar_today_outlined,
                                              size: 20),
                                          title: Text(
                                            'Monday ,20 February',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Icon(Icons.more_vert),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('Attendance'),
                                      ),
                                      Container(
                                        child: Align(
                                          widthFactor: 0.5,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      backgroundImage:
                                                          AssetImage(
                                                              'img1.jpg'),
                                                      radius: 13),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      backgroundImage:
                                                          AssetImage(
                                                              'img2.jpg'),
                                                      radius: 13),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      backgroundImage:
                                                          AssetImage(
                                                              'img3.jpg'),
                                                      radius: 13),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      backgroundImage:
                                                          AssetImage(
                                                              'img4.jpg'),
                                                      radius: 13),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      backgroundImage:
                                                          AssetImage(
                                                              'img5.jpg'),
                                                      radius: 13),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      child: Text('+2'),
                                                      radius: 13),
                                                ),
                                              ),
                                              SizedBox(width: 200),
                                              Text('send Invitation link'),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon:
                                                      Icon(Icons.notifications))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 6),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
