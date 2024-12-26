import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  Home createState() => Home();
}

class Home extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //  final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    Widget containwidgets2(String img, String place) {
      return InkWell(
        onTap: () {},
        child: SizedBox(
            height: 200,
            width: 150,
            child: Stack(fit: StackFit.expand, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(fit: BoxFit.cover, image: AssetImage(img)),
              ),
               Positioned(
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                                            place,
                                            style: TextStyle(color: Colors.white),
                                          ),
                      ),
                    ],
                  ))
            ])),
      );
    }

    Widget containWidgets(String imagePath) {
      return SizedBox(
        height: 300,
        width: 270,
        child: Column(
          children: [
            Container(
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                    height: 150,
                    width: 250,
                    child: Stack(fit: StackFit.expand, children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                            fit: BoxFit.cover, image: AssetImage(imagePath)),
                      ),
                      Positioned(
                          top: 10,
                          right: 5,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(16),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.favorite,
                                color: Color.fromARGB(255, 187, 186, 186),
                              ))),
                    ])),
              ),
            ),
            Container(
              width: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      title: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: '\$120',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold,color:Colors.black)),
                          TextSpan(
                              text: '/Night',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold,color:Colors.black)),
                          WidgetSpan(
                              child: Icon(
                            Icons.bolt,
                            size: 16,
                            color: Colors.amber,
                          )),
                        ]),
                      ),
                      trailing: SizedBox(
                        height: 20,
                        width: 40,
                        child: RichText(
                          text: const TextSpan(children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.pink,
                              ),
                            ),
                            TextSpan(text: '4', style: TextStyle(fontSize: 13,color:Colors.black))
                          ]),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      'Carinthia Lake Sea Breakfast...',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color:Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      'Private Room / 4 Beds',
                      style: TextStyle(fontSize: 13,color:Colors.grey),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget containWidgets3(String imagePath) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0),
        child: SizedBox(
          height: 350,
          width: width,
          child: Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                      height: 200,
                      width: width,
                      child: Stack(fit: StackFit.expand, children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover, image: AssetImage(imagePath)),
                        ),
                        Positioned(
                            top: 10,
                            right: 5,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(16),
                                ),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(255, 187, 186, 186),
                                ))),
                      ])),
                ),
              ),
              Container(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                        title: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: '\$120',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold,color:Colors.black)),
                            TextSpan(
                                text: '/Night',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,color:Colors.black)),
                            WidgetSpan(
                                child: Icon(
                                  Icons.bolt,
                                  size: 16,
                                  color: Colors.amber,
                                )),
                          ]),
                        ),
                        trailing: SizedBox(
                          height: 23,
                          width: 40,
                          child: RichText(
                            text: const TextSpan(children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.pink,
                                ),
                              ),
                              TextSpan(text: '4', style: TextStyle(fontSize: 13,color:Colors.black))
                            ]),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        'Carinthia Lake Sea Breakfast...',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color:Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        'Private Room / 4 Beds',
                        style: TextStyle(fontSize: 13,color:Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
          child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: const Text(

                        'Explore the world! By Travelling',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: width / 1.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Where did you go?',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                )),
                          ),
                        ),
                        Container(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(20),
                                ),
                                onPressed: () {},
                                child: const Icon(Icons.tune)))
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
                'Popular locations',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    containwidgets2('images/temple.jpg', 'TamilNadu'),
                    const SizedBox(width: 10),
                    containwidgets2('images/TajMahal.jpg', 'India'),
                    const SizedBox(width: 10),
                    containwidgets2('images/tpk.jpg', 'TamilNadu'),
                    const SizedBox(width: 10),
                    containwidgets2('images/Great-Wall.jpg', 'China'),
                    const SizedBox(width: 10),
                    containwidgets2('images/Eiffel_Tower.jpg', 'Paris'),
                    const SizedBox(width: 10),
                    containwidgets2('images/meenakshi_amman.jpg', 'TamilNadu'),
                    const SizedBox(width: 10),
                    containwidgets2('images/burjkhalifa.jpg', 'Dubai'),
                    const SizedBox(width: 10),
                    containwidgets2('images/Redfort.webp', 'Delhi'),
                    const SizedBox(width: 10),
                    containwidgets2('images/usa.webp', 'USA'),
                   
                                    ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Recommended',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    containWidgets('images/1.jpg'),
                    containWidgets('images/2.jpg'),
                    containWidgets('images/3.jpg'),
                    containWidgets('images/4.jpg'),
                    containWidgets('images/5.jpg'),
                    containWidgets('images/6.jpg'),
                    containWidgets('images/house2.jpg'),
                    containWidgets('images/house5.webp'),
                    containWidgets('images/housse4.webp'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 300,
                  width: width,
                  child: Container(
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          height: 150,
                          width: 350,
                          child: Stack(fit: StackFit.expand, children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                  fit: BoxFit.cover, image: AssetImage('images/girl.jpg')),
                            ),
                            Positioned(
                                top: 50,
                                left: 5,
                                child: Container(
                                  width: 200,
                                  child: ListTile(
                                    title: Text(
                                      'Hosting Fee for /as low as 1%',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    subtitle: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.pink,
                                          padding: const EdgeInsets.all(16),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Become a Host',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                )),
                          ])),
                    ),
                  ),
                ),
              ),
              Text(
                'Most Viewed',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              containWidgets3('images/6.jpg'),
              containWidgets3('images/house2.jpg'),
              containWidgets3('images/house5.webp'),
              containWidgets3('images/3.jpg'),
            ],
          ),
                ),
              ),
        ));
  }
}
