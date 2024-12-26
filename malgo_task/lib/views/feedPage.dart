import 'package:flutter/material.dart';
import 'package:malgo_task/views/feedDetails.dart';


class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_sharp)),
          title: const Text('Daily News'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.card_giftcard)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications)),
            CircleAvatar(
              child: Image.asset('assets/Ellipse 132.jpg'),
              radius: 15,
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: const [
              Tab(text: 'My Feed'),
              Tab(text: 'Latest News'),
              Tab(text: 'Trader'),
              Tab(text: 'Top News'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tabContent(),
          ],
        ),

      ),
    );
  }
  tabContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/image 13.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          listofcontent('assets/image 34.jpg'),
          listofcontent('assets/image 35.jpg'),
          listofcontent('assets/image 36.jpg'),
          listofcontent('assets/image 38.jpg'),
        ],
      ),
    );
  }


 listofcontent(String image) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Feeddetails()));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cryptocurrency values surged above '
                              '60,000, reaching its highest point since 2021.',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'loremipsum.net 27 min',
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.favorite_border, size: 15),
                            SizedBox(width: 5),
                            Icon(Icons.messenger_outline, size: 15),
                            SizedBox(width: 5),
                            Icon(Icons.share, size: 15),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      // width: 200,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(indent: 20, endIndent: 20),
      ],
    );
  }
}