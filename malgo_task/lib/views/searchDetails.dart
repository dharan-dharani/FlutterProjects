import 'package:flutter/material.dart';

class Searchdetails extends StatefulWidget {
  const Searchdetails({super.key});

  @override
  State<Searchdetails> createState() => _SearchdetailsState();
}

class _SearchdetailsState extends State<Searchdetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 160,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image 43.png'))
                ),
              ),
            ),
          const Padding(
             padding:  EdgeInsets.only(right: 18.0,left: 18,top: 10),
             child:   Text('#Cryptocurrency News',style: TextStyle(color: Colors.black,
                 fontWeight: FontWeight.bold,fontSize: 15),),
           ),
            const Padding(
              padding: EdgeInsets.only(right: 18.0,left: 18,top: 10),
              child:  Text('Lorem Ipsum is simply dummy text',style: TextStyle(color: Colors.red,
                  fontWeight: FontWeight.bold,fontSize: 25),),
            ),
           const Padding(
             padding:  EdgeInsets.only(right: 18.0,left: 18,top: 10),
             child:   Text('LONDON — Cryptocurrencies “have no intrinsic value” '
                  'and people who invest in them should be prepared to'
                  ' lose all their money, Bank of England Governor Andrew '
                  'Bailey said.\n\n'

                 '/nDigital currencies like bitcoin, ether and'
                  ' even dogecoin have been on a tear this year, reminding'
                  ' some investors of the 2017 crypto bubble in which bitcoin '
                  'blasted toward 20,000, only to sink as low as 3,122 a year '
                  'later./n'

                 '/brAsked at a press conference Thursday about the rising '
                  'value of cryptocurrencies, Bailey said: “They have no intrinsic'
                  ' value. That doesn’t mean to say people don’t put value on them, '
                  'because they can have extrinsic value. But they have no intrinsic'
                  ' value./n'

                 '/n“I’m going to say this very bluntly again,” he added. “Buy'
                  ' them only if you’re prepared to lose all your money./n'

                 '/nBailey’s '
                  'comments echoed a similar warning from the U.K.’s Financial'
                  ' Conduct Authority.',style: TextStyle(color: Colors.black,fontSize: 14),),
           )
          ],
        ),
      ),
    );
  }
}
