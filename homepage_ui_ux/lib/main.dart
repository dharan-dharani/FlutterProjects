import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _Mystate createState() => _Mystate();
}

class _Mystate extends State<MyApp> {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Mind Vision Technology',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.view_comfy_alt),
                        title: Text('Projects'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.task),
                        title: Text('Tasks'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.workspaces),
                        title: Text('Team'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        onTap: () {},
                      ),
                      Container(
                        height: 250,
                        width: 250,
                        color: Colors.grey[300],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: ListTile(
                                title: Center(child: Text('Upgrade to pro')),
                                subtitle: Center(
                                    child: Text('Get 1 Month free and unlock')),
                              ),
                            ),
                            Container(
                              child: TextButton(
                                  onPressed: () {}, child: Text('Upgrade')),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.error),
                        title: Text('Help & Information'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log Out'),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 800,
                          color: Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Hello, Mind Vision Technology',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('16 may,2016'),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.calendar_month_outlined))
                                    ],
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                  'Track Team Progress here, your almost reach a goal'),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 800,
                          color: Colors.amberAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 80,
                                width: 250,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.recommend_rounded)),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Finished'),
                                          Container(
                                            child: Row(
                                              children: [
                                                Text('18'),
                                                Icon(Icons.arrow_drop_down),
                                                Text('+18 Tasks'),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                width: 250,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.timer_outlined)),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Tracked'),
                                          Container(
                                            child: Row(
                                              children: [
                                                Text('31h'),
                                                Icon(Icons.arrow_drop_up),
                                                Text('-6 hours'),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                width: 250,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.trending_up_outlined)),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Efficiency'),
                                          Container(
                                            child: Row(
                                              children: [
                                                Text('93%'),
                                                Icon(Icons.arrow_drop_down),
                                                Text('+12 % '),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, left: 25),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Performance',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    onPressed: () {}, child: Text('01-07 May'))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Container(
                              width: 800,
                              height: 200,
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "graph.png",
                                ),
                              )),
                        ),
                        Container(
                            width: 800,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25, right: 25),
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child: Text('Current Tasks')),
                                            VerticalDivider(
                                                indent: 5, endIndent: 5),
                                            Container(child: Text('30%')),
                                          ],
                                        ),
                                        Container(
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text('Week')),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 300,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.show_chart)),
                                              Text(
                                                  'Product Review for UI Market'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              CircleAvatar(radius: 4),
                                              Text('In progress'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              Icon(Icons.schedule),
                                              Text('4h'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            width: 100,
                                            child: Center(
                                                child: Icon(Icons.more_horiz))),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 300,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.search)),
                                              Text('UX Research for product'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              CircleAvatar(radius: 4),
                                              Text('On Hold'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              Icon(Icons.schedule),
                                              Text('8h'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            width: 100,
                                            child: Center(
                                                child: Icon(Icons.more_horiz))),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 300,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.terminal)),
                                              Text(
                                                  'App Design and Development'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              CircleAvatar(radius: 4),
                                              Text('Done'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              Icon(Icons.schedule),
                                              Text('32h'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            width: 100,
                                            child: Center(
                                                child: Icon(Icons.more_horiz))),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            height: 200,
                            width: 250,
                            color: Colors.grey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                          backgroundImage:
                                              AssetImage("Circular.jpg"),
                                          radius: 30),
                                      Positioned(
                                          right: 3,
                                          bottom: 7,
                                          child: CircleAvatar(radius: 5))
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: Center(
                                      child: Text('Mind Vision Technology')),
                                  subtitle: Center(child: Text('@mindvision')),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.call)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.videocam)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.more_vert))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                child: Divider(
                                  endIndent: 20,
                                ),
                              ),
                              Container(child: Center(child: Text('Activity'))),
                              Container(
                                width: 100,
                                child: Divider(
                                  indent: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                child: ListTile(
                                  leading: Container(
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                            backgroundImage:
                                                AssetImage('img1.jpg'),
                                            radius: 20),
                                        Positioned(
                                            right: 3,
                                            bottom: 7,
                                            child: CircleAvatar(radius: 5))
                                      ],
                                    ),
                                  ),
                                  title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Floyd Miles',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '10.30 PM',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ]),
                                  subtitle: Text(
                                    'Commented on Stark Project',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, top: 4, bottom: 4),
                                child: Container(
                                  width: 200,
                                  height: 65,
                                  color: Colors.blue[100],
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Hi, Next Week We'll start a New Project,I'll tell you all details later. "),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                child: ListTile(
                                  leading: Container(
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                            backgroundImage:
                                                AssetImage('img2.jpg'),
                                            radius: 20),
                                        Positioned(
                                            right: 3,
                                            bottom: 7,
                                            child: CircleAvatar(radius: 5))
                                      ],
                                    ),
                                  ),
                                  title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Guy Hawkins',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '10.30 PM',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ]),
                                  subtitle: Text(
                                    'Added to a file 7Heros Project',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, top: 4, bottom: 4),
                                child: Container(
                                  width: 200,
                                  height: 55,
                                  color: Colors.blue[100],
                                  child: ListTile(
                                    leading: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: CircleAvatar(radius: 15),
                                    ),
                                    title: Text(
                                      'Image.fig',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Text(
                                        '10.5 mb',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    trailing: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Icon(Icons.download_for_offline),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                child: ListTile(
                                  leading: Container(
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                            backgroundImage:
                                                AssetImage('img3.jpg'),
                                            radius: 20),
                                        Positioned(
                                            right: 3,
                                            bottom: 7,
                                            child: CircleAvatar(radius: 5))
                                      ],
                                    ),
                                  ),
                                  title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Kristin Watson',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '10.30 PM',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ]),
                                  subtitle: Text(
                                    'Commented on 7Heros Project',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                child: Container(
                                  height: 40,
                                  width: 250,
                                  color: Colors.grey[350],
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.attachment_outlined)),
                                      Text('Write a message'),
                                      SizedBox(width: 20),
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.sentiment_satisfied)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.mic))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
