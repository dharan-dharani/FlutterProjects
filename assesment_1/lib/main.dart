import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _statemy createState() => _statemy();
}

class _statemy extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.grey, Colors.deepPurple])),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(233, 81, 131, 1),
                                  borderRadius: BorderRadius.circular(7)),
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              'Logo',
                              style: TextStyle(
                                  fontSize: 35, color: Colors.deepPurple),
                            ),
                          ],
                        ),
                        const SizedBox(width: 180),
                        TextButton(onPressed: () {}, child: const Text('Home')),
                        TextButton(
                            onPressed: () {}, child: const Text('About')),
                        TextButton(
                            onPressed: () {}, child: const Text('Services')),
                        TextButton(
                            onPressed: () {}, child: const Text('Contact')),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CONTEN DESIGN',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.deepPurple),
                                  ),
                                  Text(
                                    'Landing Page',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.blue),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                      'Hi ,This is Ux and Ui Design and Development Page'),
                                  SizedBox(height: 30),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.pink),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                    Colors.pink)),
                                        onPressed: () {},
                                        child: const Text(
                                          'REGISTER',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 530,
                              width: 500,
                              child: Image.asset('design.jpg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
