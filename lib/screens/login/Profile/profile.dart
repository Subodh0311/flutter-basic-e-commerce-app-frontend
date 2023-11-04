import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/screens/login/Profile/order.dart';
import 'package:mainproject/screens/login/firstscreen.dart';
import 'package:mainproject/screens/login/login.dart';

import '../cart.dart';
import 'cart.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        title: Text("Profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15,top: 30),
            child: SizedBox(
              width: 360,
              height: 60,
              child: OutlinedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>order()));
              },
                child:Row(
                  children: [
                    Text("Your Orders",style: TextStyle(fontSize: 25,color: Colors.black87),),
                    Padding(
                      padding: const EdgeInsets.only(left:170),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15,top: 30),
            child: SizedBox(
              width: 360,
              height: 60,
              child: OutlinedButton(onPressed: () {},
                child:Row(
                  children: [
                    Text("Manage your Profile",style: TextStyle(fontSize: 25,color: Colors.black87),),
                    Padding(
                      padding: const EdgeInsets.only(left:79),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15,top: 30),
            child: SizedBox(
              width: 360,
              height: 60,
              child: OutlinedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>login()));
              },
                child:Row(
                  children: [
                    Text("Sign Out",style: TextStyle(fontSize: 25,color: Colors.black87),),
                    Padding(
                      padding: const EdgeInsets.only(left:208),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    ),
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
               // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
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
