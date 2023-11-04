import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:mainproject/models/productmodel.dart';
import 'package:mainproject/screens/login/recommended_for_you/rfy_Pr1.dart';
import 'package:mainproject/screens/login/recommended_for_you/rfy_Pr2.dart';
import 'package:mainproject/screens/login/recommended_for_you/rfy_Pr3.dart';
import 'package:mainproject/screens/login/recommended_for_you/rfy_Pr4.dart';

import 'Profile/profile.dart';
import 'cart.dart';

import 'categories/e_applinces/cat_screen2.dart';
import 'categories/gadgets/cat_screen3.dart';
import 'categories/groceries/cat_screen1.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  List<Widget> pages = [
    Cart(),
    Profile(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Store",style: TextStyle(fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight,right: 16.0,left: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Search..",
                  prefixIcon: Icon(Icons.search_outlined, color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 3),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: categoriesList.asMap().entries.map((entry) {
                int index = entry.key;
                String image = entry.value;

                // Define a function to handle the navigation
                void navigateToScreen() {
                  if (index == 0) {
                    // Navigate to the first screen
                    // Replace 'YourScreen1()' with your actual screen widget.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => YourScreen1()));
                  } else if (index == 1) {
                    // Navigate to the second screen
                    // Replace 'YourScreen2()' with your actual screen widget.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => YourScreen2()));
                  } else if (index == 2) {
                    // Navigate to the third screen
                    // Replace 'YourScreen3()' with your actual screen widget.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => YourScreen3()));
                  }
                  // Add more conditions for additional screens as needed.
                }

                return Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: GestureDetector(
                    onTap: navigateToScreen, // Call the navigation function on tap
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(image),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 35,top: 20),
              child: Text(
                "Recommended for you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.shade50, // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset of the shadow
                      ),
                    ]
                ),
                  child: Container(
                    height: 350, // Set your desired height for the big container
                    width: 350, // Set your desired width for the big container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                      child: Container(
                        height: 350, // Set your desired height for the big container
                        width: 350, // Set your desired width for the big container
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Top Row for the first two small containers
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // First Small Container
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=>Pr1()));
                                        },
                                        child: Column(
                                          children: [
                                            Image.network(
                                              "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
                                              height: 100,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text("Boat Immortal",style: TextStyle(color: Colors.orange.shade900),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // Second Small Container
                                Column(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute
                                          (builder: (context)=>Pr2()));
                                      },
                                      child: Column(
                                        children: [
                                          Image.network(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT74K845ifnFzXfaUBbhD3YTqucEJGS6cPaPA&usqp=CAU",
                                            height: 100,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text("Iphone 15",style: TextStyle(color: Colors.orange.shade900),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            // Bottom Row for the other two small containers
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Third Small Container
                                Column(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute
                                          (builder: (context)=>Pr3()));
                                      },
                                      child: Column(
                                        children: [
                                          Image.network(
                                            "https://i.gadgets360cdn.com/products/large/nirvana-717-anc-premium-black-720x-800x1162-1612030876.png",
                                            height: 100,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text("Product 3",style: TextStyle(color: Colors.orange.shade900),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                // Fourth Small Container
                                Column(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute
                                          (builder: (context)=>Pr4()));
                                      },
                                      child: Column(
                                        children: [
                                          Image.network(
                                            "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
                                            height: 100,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text("Product 4",style: TextStyle(color: Colors.orange.shade900),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )


                  ),
            ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 35,top: 20,bottom: 10),
              child: Text("Products On Sale",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.shade50, // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset of the shadow
                      ),
                    ]
                ),
                child: Container(
                    height: 350, // Set your desired height for the big container
                    width: 350, // Set your desired width for the big container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Container(
                      height: 350, // Set your desired height for the big container
                      width: 350, // Set your desired width for the big container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Top Row for the first two small containers
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // First Small Container
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Column(
                                        children: [
                                          Image.network(
                                            "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
                                            height: 100,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text("Product 1",style: TextStyle(color: Colors.orange.shade900),),
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                              // Second Small Container
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
                                          height: 100,
                                          width: 100,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text("Product 2",style: TextStyle(color: Colors.orange.shade900),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          // Bottom Row for the other two small containers
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Third Small Container
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
                                          height: 100,
                                          width: 100,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text("Product 3",style: TextStyle(color: Colors.orange.shade900),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              // Fourth Small Container
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
                                          height: 100,
                                          width: 100,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text("Product 4",style: TextStyle(color: Colors.orange.shade900),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: AnimatedBottomNavigationBar(

          icons: [
            CupertinoIcons.home,
            CupertinoIcons.shopping_cart,
            CupertinoIcons.profile_circled,
            Icons.add_circle_outline,
          ],
          inactiveColor:CupertinoColors.white,
          activeColor: Colors.red.shade900,
          gapLocation: GapLocation.center,
          activeIndex: pageIndex,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 20,
          iconSize: 25,
          rightCornerRadius: 20,
          elevation: 3,
          backgroundColor: Colors.orangeAccent.shade400,

          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
    switch (index) {
    case 0:
    // Navigate to the Home screen (if needed)
    break;
    case 1:
    // Navigate to the Cart screen
    Navigator.pushNamed(context, '/cart'); // Use the defined route
    break;
    case 2:
    // Navigate to the Profile screen
    Navigator.pushNamed(context, '/profile'); // Use the defined route
    break;
    case 3:
    // Handle the fourth tab as needed
    break;
    }
    },
        ),
      ),
    );
  }
}

List<String> categoriesList = [
  "https://thumbs.dreamstime.com/b/shopping-basket-full-fresh-groceries-shopping-basket-full-fresh-groceries-vector-illustration-healthy-organic-natural-food-175833487.jpg",
  "https://img.freepik.com/premium-vector/domestic-electrical-kit_105325-141.jpg?w=2000",
  "https://img.freepik.com/free-vector/antigravity-technology-with-elements_23-2148085873.jpg?w=2000",
];

List<ProductModel> products= [
  ProductModel(
      image: "https://atlas-content-cdn.pixelsquid.com/stock-images/apple-iphone-13-mini-red-smartphone-ywLaW83-600.jpg",
      id: "1",
      name: "IPhone 13",
      price: "51999",
      description: "Apple iPhone 13 (128GB) - Starlight",
      status: "pending",
      isFavourite: false,
  ),
  ProductModel(
    image: "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
    id: "2",
    name: "BOAT Immortal",
    price: "2999",
    description: "Immortal 1000D - 7.1 channel headphones",
    status: "pending",
    isFavourite: false,
  ),
  ProductModel(
    image: "https://prod4-sprcdn-assets.sprinklr.com/200052/923d30e3-be94-4ac9-941f-1584cad661c5-720536175/Screenshot_2023-06-20_162946-r.png",
    id: "3",
    name: "BOAT Rockerz 550",
    price: "1999",
    description: "boAt Rockerz 550 is an over-ear wireless headset that has been ergonomically designed to meet the needs of music lovers. The headphones come equipped with the latest Bluetooth v5.0 for instant wireless connectivity. Its powerful 500mAh battery provides playtime of up to 20 hours for extended audio bliss. ",
    status: "pending",
    isFavourite: false,
  ),
  ProductModel(
    image: "https://www.nicepng.com/png/detail/214-2143179_laptops-dell-inspiron-7000-ultrafino.png",
    id: "4",
    name: "Dell Insprion 7000",
    price: "51999",
    description: "Apple iPhone 13 (128GB) - Starlight",
    status: "pending",
    isFavourite: false,
  ),
  ProductModel(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkoAf1uU4lMOsphCFllvLKkvA2iHLH2xPgYA&usqp=CAU",
    id: "5",
    name: "MSI Gl65 Gaming Laptop",
    price: "114000",
    description: "MSI GL65 Leopard Core i7 10th Gen 10750H - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics/NVIDIA GeForce RTX 2060) GL65 Leopard 10SEK-465IN Gaming Laptop  (15.6 inch, Black, 2.3 kg)",
    status: "pending",
    isFavourite: false,
  ),
  ProductModel(
    image: "https://www.nicepng.com/png/detail/214-2143179_laptops-dell-inspiron-7000-ultrafino.png",
    id: "6",
    name: "Dell Insprion 7000",
    price: "69999",
    description: "DELL Inspiron 7000 Core i7 7th Gen 7500U - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) 7560 Laptop  (15.6 inch, Gray, 2 kg, With MS Office)",
    status: "pending",
    isFavourite: false,
  ),
];
