import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color _normalcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 70),
                        Container(
                          width: 150,
                          child: ListTile(
                            title: Text('Flipkart',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[900])),
                            subtitle: const Text(
                              'Explore Plus',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(width: 70),
                        Container(
                            width: 350,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue[50],
                                  hintText:
                                      'Search for Products, Brands and more',
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            )),
                        SizedBox(width: 50),
                        InkWell(
                          onTap: () {
                            print('object2');
                          },
                          onHover: (value) {
                            setState(() {
                              _normalcolor = value ? Colors.blue : Colors.white;
                            });

                            print('object');
                          },
                          child: Container(
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: _normalcolor,
                            ),
                            child: ListTile(
                              leading: Icon(Icons.account_circle_rounded),
                              title: Text('Login'),
                              trailing: Icon(Icons.arrow_drop_down_sharp),
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          width: 140,
                          child: ListTile(
                            leading: Icon(Icons.shopping_cart_outlined),
                            title: Text('Cart'),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          width: 200,
                          child: ListTile(
                            leading: Icon(Icons.sell_outlined),
                            title: Text('Become a seller'),
                          ),
                        ),
                        SizedBox(width: 30),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                            child: const Text(
                          'Best of Electronics',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(width: 30),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('earphone.jpg'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'TrueWireless Headphones',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'Grab Now',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child:
                                          Image.asset('bluetoothspeaker.png'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Bluetooth Speaker',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'JBL Brand',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('smartwatch.jpg'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Smart Watch',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'New Features',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('iphone.jpg'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Smart Phone',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'IPhone 15',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('tablet.jpg'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Best Tab',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'Windows Tab',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('moniter.png'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Samsung Brand',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'LED Moniter',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                            child: const Text(
                          'Home Appliances',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(width: 30),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('fridge.jpg'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Refridgerator ',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'Godrej',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('cooker.webp'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Prestige',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'Cooker',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('dinning.webp'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Classic',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'Furniture',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('mixergrinder.jpg'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Mixer',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'ORPAD',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('washing.png'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Washing Machine',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'LG',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset('stove.jpg'),
                                    ),
                                    const ListTile(
                                      title: Text(
                                        'Cusimax ',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        'Induction Stove',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Best Formal Shirts',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('s1.png'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Formal Shirt',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Blue',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('s2.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Formal Shirt',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Red Checked Shirt',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('s3.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Formal Shirt',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Light Blue',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('s4.png'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Formal Shirt',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'White',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Sport Shoes',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('shoe.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Nike Shoe',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Blue-Deepblue',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('shoe2.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Adidas',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'LightGreen',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('shoe3.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Sports Pick',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Grey',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('shoe4.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Recommended',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Grab Soon',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Mens Products',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('perfume.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Luxify',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Ultra Male',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('showergel.webp'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'Greeko men',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Shower & Face wash Gel',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('bodywash.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'The Man Company',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Face Wash',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Image.asset('perfume2.jpg'),
                                        ),
                                        const ListTile(
                                          title: Text(
                                            'TrueFitt & Hill',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            'Sandalwood',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 320,
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // color: Colors.amber,
                                height: 150,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('About',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      'Contact us',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('About us',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Careers',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Flipkart Stories',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Press',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Corporate Information',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                //color: Colors.amber,
                                height: 150,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Group Companies',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      'Myntra',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('Cleartrip',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Shopsy',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                //  color: Colors.amber,
                                height: 150,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Help',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      ' Payments',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('Shipping',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Cancellation and Returns',
                                        style: TextStyle(color: Colors.white)),
                                    Text('FAQ',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Report',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                //color: Colors.amber,
                                height: 150,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Consumer Policy',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      'Cancellation & Returns',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('Terms of Use',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Security',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Privacy',
                                        style: TextStyle(color: Colors.white)),
                                    Text('SiteMap',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Grievance',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                // color: Colors.amber,
                                height: 150,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mail Us',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      'Flipkart Internet private limited,',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('flipkart@gmail.com',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                // color: Colors.amber,
                                height: 150,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Registered office',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      ' Flipkart Internet private limited,',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('Telephone : ',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 12),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
