import 'package:flutter/material.dart';
import 'package:malgo_task/views/searchDetails.dart';

class FeedSearch extends StatefulWidget {
  const FeedSearch({super.key});

  @override
  State<FeedSearch> createState() => _FeedSearchState();
}
class Category{
  final String domain;
  final Color colors;
 final  String image;
  Category({required this.domain,required this.colors,required this.image});
}
class _FeedSearchState extends State<FeedSearch> {
 final  List <Category>categories=[
    Category(domain: 'Financial News',
  colors: Colors.amberAccent.withOpacity(0.5), image: 'assets/image 10.png'),
  Category(domain: 'Cryptocurrency News', colors: Colors.red.withOpacity(0.5), image: 'assets/Rectangle.png'),
    Category(domain: 'Blockchain News', colors: Colors.purple.withOpacity(0.5), image: 'assets/Rectangle (2).png'),
    Category(domain: 'Tech News', colors: Colors.yellowAccent.withOpacity(0.5), image: 'assets/image 11.png'),
    Category(domain: 'Business News', colors: Colors.redAccent.withOpacity(0.5), image: 'assets/image 12.png'),
    Category(domain: 'Market Analysis', colors: Colors.pinkAccent.withOpacity(0.5), image: 'assets/image 13.png'),
    Category(domain: 'Regulation News', colors: Colors.white60.withOpacity(0.5), image: 'assets/image 14.png'),
    Category(domain: 'Investment Tips', colors: Colors.amber.withOpacity(0.5), image: 'assets/image 15.png'),
    Category(domain: 'Economic Trends', colors: Colors.deepPurpleAccent.withOpacity(0.5), image: 'assets/image 16.png'),
    Category(domain: 'Startups And Innovation', colors: Colors.white.withOpacity(0.5), image: 'assets/image 17.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child:    Text('Categories',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 2.0,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category=categories[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Searchdetails()));

                      },child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(category.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: category.colors,
                            ),
                          ),
                          Center(
                            child: Text(
                              category.domain,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}