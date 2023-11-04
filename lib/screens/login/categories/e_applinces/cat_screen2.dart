import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/screens/login/categories/e_applinces/pro2.1.dart';
import 'package:mainproject/screens/login/categories/e_applinces/pro2.2.dart';
import 'package:mainproject/screens/login/categories/e_applinces/pro2.3.dart';
import 'package:mainproject/screens/login/categories/e_applinces/pro2.4.dart';

import '../../Profile/profile.dart';
import '../../cart.dart';
import '../../firstscreen.dart';

class YourScreen2 extends StatefulWidget {
  const YourScreen2({super.key});

  @override
  State<YourScreen2> createState() => _YourScreen2State();
}

class _YourScreen2State extends State<YourScreen2> {
  int pageIndex = 0;
  List<Widget> pages = [
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Electical Appliances"),
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
                (builder: (context)=>pro2_1()));
            },
              child:  Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE0NiLgtxMYWG_gKy1u7UgD1_Ap335Woa3-Q&usqp=CAU",
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
                        Text("Goderej Fridge",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${25999}",
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
                (builder: (context)=>pro2_2()));
            },
              child: Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://freepngimg.com/download/air_conditioner/4-2-ac-png.png",
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
                        Text("A.C",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${20000}",
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
                (builder: (context)=>pro2_3()));
            },
              child: Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://5.imimg.com/data5/OO/VI/MY-18929878/wt-eon-651-pf-washing-machine.png",
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
                        Text("Washing machine",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${27990}",
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
                (builder: (context)=>pro2_4()));
            },
              child: Container(
                height: 130,
                width: 400,
                child: Row(
                  children: [
                    Image.network(
                      "https://5.imimg.com/data5/WN/KH/TR/GLADMIN-53068354/selection-004-500x500.png",
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
                        Text("Iduction Stove",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10), // Add some space between rating and price
                        Text(
                          "\u{20B9}${1399}",
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
