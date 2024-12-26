import 'package:flutter/material.dart';

class PageViewWithController extends StatefulWidget {
  @override
  _PageViewWithControllerState createState() => _PageViewWithControllerState();
}

class _PageViewWithControllerState extends State<PageViewWithController> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView with Controller'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                Center(child: Text('Page 1', style: TextStyle(fontSize: 24))),
                Center(child: Text('Page 2', style: TextStyle(fontSize: 24))),
                Center(child: Text('Page 3', style: TextStyle(fontSize: 24))),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Text('Previous'),
              ),
              ElevatedButton(
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Text('Next'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: PageViewWithController()));
