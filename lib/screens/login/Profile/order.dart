import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/screens/login/Profile/details/order2.dart';
import 'package:mainproject/screens/login/Profile/profile.dart';

import '../cart.dart';
import '../firstscreen.dart';
import 'details/order1.dart';
import 'details/order3.dart';
class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
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
    title: Text("Orders",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    centerTitle: true,
    ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute
               (builder: (context)=>order1()));
            },
              child:  Container(
                height: 110,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://www.boat-lifestyle.com/cdn/shop/products/1.png?v=1625748155",
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
                        Text("BoatImmortal",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height:6), // Add some space between rating and price
                        Text(
                          "Ordered on 23/7/2023",
                          style: TextStyle(fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Delivered on 30/7/2023",
                          style: TextStyle(fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute
                (builder: (context)=>order2()));
            },
              child:  Container(
                height: 110,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://prod4-sprcdn-assets.sprinklr.com/200052/923d30e3-be94-4ac9-941f-1584cad661c5-720536175/Screenshot_2023-06-20_162946-r.png",
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
                        Text("Rockerz 558",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height:6), // Add some space between rating and price
                        Text(
                          "Ordered on 1/9/2023",
                          style: TextStyle(fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Delivered on 5/9/2023",
                          style: TextStyle(fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:60),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute
                (builder: (context)=>order3()));
            },
              child:  Container(
                height: 110,
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
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height:6), // Add some space between rating and price
                        Text(
                          "Ordered on 26/10/2023",
                          style: TextStyle(fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Delivered on 30/10/2023",
                          style: TextStyle(fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:43),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
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
