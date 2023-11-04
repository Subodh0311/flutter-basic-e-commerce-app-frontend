import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/screens/login/categories/gadgets/pro3.1.dart';
import 'package:mainproject/screens/login/categories/groceries/pro1.dart';
import 'package:mainproject/screens/login/categories/groceries/pro2.dart';
import 'package:mainproject/screens/login/categories/groceries/pro3.dart';
import 'package:mainproject/screens/login/categories/groceries/pro4.dart';

import '../../Profile/profile.dart';
import '../../cart.dart';
import '../../firstscreen.dart';

class YourScreen1 extends StatefulWidget {
  const YourScreen1({super.key});

  @override
  State<YourScreen1> createState() => _YourScreen1State();
}

class _YourScreen1State extends State<YourScreen1> {
  int pageIndex = 0;
  List<Widget> pages = [
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Groceries"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Back arrow icon
          onPressed: () {
            // Navigate back when the arrow is pressed
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight-30,right: 16.0,left: 16.0),
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
            SizedBox(
                height: 20
            ),
           OutlinedButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute
               (builder: (context)=>pro1()));
           },
               child:  Container(
                 height: 130,
                 width: 400,
                 child: Row(
                   children: [
                     Image.network(
                       "https://www.aashirvaad.com/img/prods/big-3.png",
                       height: 100,
                       width: 100,
                     ),
                     SizedBox(width: 10), // Add some space between the image and text

                     // Create a column for rating stars and price
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         // Add a row for rating stars (you can customize the stars as needed)
                         SizedBox(
                           height: 20,
                         ),
                         Text("Aashirvaad aata",
                           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                           ),
                         ),
                         SizedBox(height: 10), // Add some space between rating and price
                         Text(
                           "\u{20B9}${200}",
                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                         ),
                         SizedBox(
                           height: 8,
                         ),
                         Row(
                           children: [
                             Icon(Icons.star, color: Colors.orangeAccent),
                             Icon(Icons.star, color: Colors.orangeAccent),
                             Icon(Icons.star, color: Colors.orangeAccent),
                             Icon(Icons.star, color: Colors.orangeAccent),
                             Icon(Icons.star_border, color: Colors.orangeAccent),
                           ],
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
           ),

            OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute
                (builder: (context)=>pro2()));
            },
                child: Container(
                  height: 130,
                  width: 400,
                  child: Row(
                    children: [
                      Image.network(
                        "https://bohrakirana.com/image/cache/catalog/image/picture/Saras-Ghee-1-500x500.jpg",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(width: 10), // Add some space between the image and text

                      // Create a column for rating stars and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Add a row for rating stars (you can customize the stars as needed)
                          SizedBox(
                            height: 20,
                          ),
                          Text("Saras Ghee",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 10), // Add some space between rating and price
                          Text(
                            "\u{20B9}${550}",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star_border, color: Colors.orangeAccent),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ),



            OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute
                (builder: (context)=>pro3()));
            },
                child: Container(
                  height: 130,
                  width: 400,
                  child: Row(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgNYGAzb0AfUrL82cvbLah2eKv_uqv4WlEbg&usqp=CAU",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(width: 10), // Add some space between the image and text

                      // Create a column for rating stars and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Add a row for rating stars (you can customize the stars as needed)
                          SizedBox(
                            height: 20,
                          ),
                          Text("Apple",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 10), // Add some space between rating and price
                          Text(
                            "\u{20B9}${100}",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star_border, color: Colors.orangeAccent),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

            ),


            OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute
                (builder: (context)=>pro4()));
            },
                child: Container(
                  height: 130,
                  width: 400,
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/736x/07/05/09/07050982b703ac890a4735ddd26be196.jpg",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(width: 10), // Add some space between the image and text

                      // Create a column for rating stars and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Add a row for rating stars (you can customize the stars as needed)
                          SizedBox(
                            height: 20,
                          ),
                          Text("Cooking Oil",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 10), // Add some space between rating and price
                          Text(
                            "\u{20B9}${400}",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star_border, color: Colors.orangeAccent),
                            ],
                          ),
                        ],
                      ),
                    ],
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

            // Handle navigation based on the selected tab
            switch (index) {
              case 0:
              // Navigate to the Home screen (if needed)
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                break;
              case 1:
              // Navigate to the Cart screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                break;
              case 2:
              // Navigate to the Profile screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
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
