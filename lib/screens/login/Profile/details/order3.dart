import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../cart.dart';
import '../../firstscreen.dart';
import '../profile.dart';
class order3 extends StatefulWidget {
  const order3({super.key});

  @override
  State<order3> createState() => _order3State();
}

class _order3State extends State<order3> {
  int pageIndex = 0;
  List<Widget> pages = [
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        //title: Text("Orders",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        //centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 850,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 20),
                child: Text("View Order Details",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 7,right: 7),
                    child: Container(
                      height: 180,
                      width: 380,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 1.0,          // Border width
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Order Date',
                                  style: TextStyle(
                                    fontSize: 25,        // Text font size

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 95),
                                  child: Text("26 October 2023",style: TextStyle(fontSize: 20),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Order ID',
                                  style: TextStyle(
                                    fontSize: 25,        // Text font size

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 125),
                                  child: Text("q2973B89",style: TextStyle(fontSize: 20),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Delivery Date',
                                  style: TextStyle(
                                    fontSize: 25,        // Text font size

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text("30 October 2023",style: TextStyle(fontSize: 20),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Order Total',
                                  style: TextStyle(
                                    fontSize: 25,        // Text font size

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 95),
                                  child: Text("\u{20B9}${100} (1 item)",style: TextStyle(fontSize: 20),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 20),
                    child: Text("Billing Address",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 7,right: 7),
                    child: Container(
                      height: 200,
                      width: 380,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 1.0,          // Border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0,right: 120),
                        child: Column(
                          children: [
                            Text('GS-4 Boys Hostel PIET',
                              style: TextStyle(
                                fontSize: 22,        // Text font size
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:130),
                              child: Text('Sitapura',
                                style: TextStyle(
                                  fontSize: 22,        // Text font size
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:150),
                              child: Text('Japiur',
                                style: TextStyle(
                                  fontSize: 22,        // Text font size
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:110),
                              child: Text('Rajasthan',
                                style: TextStyle(
                                  fontSize: 22,        // Text font size
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:130),
                              child: Text('302022',
                                style: TextStyle(
                                  fontSize: 22,        // Text font size
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 20),
                child: Text("Purchase Details",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:12,left: 7,right: 7),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 1,          // Border width
                    ),
                  ),
                  child: Container(
                    height: 140,
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
                              style: TextStyle(fontSize: 25,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height:6), // Add some space between rating and price
                            Text(
                              "Sold by:XYZ PVt.LTD",
                              style: TextStyle(fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Qty:1",
                              style: TextStyle(fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 1,          // Border width
                    ),
                  ),
                  child: Container(
                    height: 100,
                    width: 375,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:12,right:200),
                          child: Text("Order Total:",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:250,top: 10),
                          child: Text("\u{20B9}${100}",style: TextStyle(fontSize: 25,color: Colors.deepOrange),),
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
