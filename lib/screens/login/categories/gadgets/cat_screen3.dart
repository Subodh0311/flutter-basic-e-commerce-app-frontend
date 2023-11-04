import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/screens/login/categories/gadgets/pro3.1.dart';
import 'package:mainproject/screens/login/categories/gadgets/pro3.2.dart';
import 'package:mainproject/screens/login/categories/gadgets/pro3.3.dart';
import 'package:mainproject/screens/login/categories/gadgets/pro3.4.dart';

import '../../Profile/profile.dart';
import '../../cart.dart';
import '../../firstscreen.dart';

class YourScreen3 extends StatefulWidget {
  const YourScreen3({super.key});

  @override
  State<YourScreen3> createState() => _YourScreen3State();
}

class _YourScreen3State extends State<YourScreen3> {
  int pageIndex = 0;
  List<Widget> pages = [
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gadgets"),
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
                (builder: (context)=>pro3_1()));
            },
              child:  Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://w7.pngwing.com/pngs/717/740/png-transparent-data-storage-laptop-hard-drives-external-storage-seagate-technology-hard-disk-electronics-electronic-device-terabyte.png",
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
                        Text("External Hard disk",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${4599}",
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
                (builder: (context)=>pro3_2()));
            },
              child: Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://m.media-amazon.com/images/S/aplus-media-library-service-media/f21fef40-c83e-4d58-b802-57b727f85146.__CR0,0,970,600_PT0_SX970_V1___.png",
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
                        Text("CosmicByte keyboard",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${1499}",
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
                (builder: (context)=>pro3_3()));
            },
              child: Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://w7.pngwing.com/pngs/719/1009/png-transparent-usb-flash-drives-data-recovery-computer-sandisk-usb-electronics-computer-usb-flash-drive.png",
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
                        Text("Pendrive",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${520}",
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
                (builder: (context)=>pro3_4()));
            },
              child: Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQoBXDcfATiMLumNjlkWiJdDbO5eVsAFEOOA&usqp=CAU",
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
                        Text("Mouse",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${230}",
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
