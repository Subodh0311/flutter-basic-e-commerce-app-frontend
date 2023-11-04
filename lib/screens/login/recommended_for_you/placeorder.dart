import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Profile/profile.dart';
import '../cart.dart';
class place extends StatefulWidget {
  const place({super.key});

  @override
  State<place> createState() => _placeState();
}

class _placeState extends State<place> {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:12),
                child: Divider(
                  color: Colors.black87,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Container(
                  height: 250,
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
                        padding: const EdgeInsets.only(top:30),
                        child: Divider(
                          color: Colors.black87,
                          thickness: 2,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:1,left: 50,top: 20),
                            child: Text("Item Price  : ",style: TextStyle(fontSize: 25,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:70,top: 25),
                            child: Text("\u{20B9}${100}",style: TextStyle(fontSize: 25,),),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:1,left: 50,top: 20),
                            child: Text("Delivery      : ",style: TextStyle(fontSize: 25,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:72,top: 25),
                            child: Text("\u{20B9}${40}",style: TextStyle(fontSize: 25,),),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:1,left: 50,top: 20),
                            child: Text("Order Total: ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:70,top: 25),
                            child: Text("\u{20B9}${140}",style: TextStyle(fontSize: 25,),),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 250,
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
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Delivery Address:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:7),
                        child: Divider(
                          color: Colors.black87,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:100),
                        child: Text('GS-4 Boys Hostel PIET',
                          style: TextStyle(
                            fontSize: 22,        // Text font size
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:235),
                        child: Text('Sitapura',
                          style: TextStyle(
                            fontSize: 22,        // Text font size
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:255),
                        child: Text('Japiur',
                          style: TextStyle(
                            fontSize: 22,        // Text font size
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:215),
                        child: Text('Rajasthan',
                          style: TextStyle(
                            fontSize: 22,        // Text font size
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:237),
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
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Container(
                  height: 150,
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
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Get it By:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:7),
                        child: Divider(
                          color: Colors.black87,
                          thickness: 2,
                        ),
                      ),
                      Text("6 November 2023",style: TextStyle(fontSize: 25,color: Colors.orange.shade900),),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: ElevatedButton(onPressed: () {},
                    child: Text("Place Order",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange), // Set the background color to orange
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Set the radius (adjust as needed)
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(200, 50)),
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
            Icons.home,
            Icons.shopping_cart,
            Icons.person,
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
