import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/screens/login/recommended_for_you/placeorder.dart';

import '../Profile/profile.dart';
import '../cart.dart';
class buy extends StatefulWidget {
  const buy({super.key});

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  int pageIndex = 0;
  List<Widget> pages = [
    Cart(),
    Profile(),
  ];
  String? selectedPaymentMethod;
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:15,left:20),
            child: Text("Select Payment Method",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 7,right: 7),
            child: Divider(
              color: Colors.black87,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Container(
              height: 390,
              width: 380,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 1.0,          // Border width
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom:85),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text('Credit or debit Card',style: TextStyle(fontSize: 25),),
                      leading: Radio(
                        value: 'method1',
                        groupValue: selectedPaymentMethod,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentMethod = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 7,right: 7),
                      child: Divider(
                        color: Colors.black87,
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: Text('UPI',style: TextStyle(fontSize: 25),),
                      leading: Radio(
                        value: 'method2',
                        groupValue: selectedPaymentMethod,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentMethod = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 7,right: 7),
                      child: Divider(
                        color: Colors.black87,
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: Text('Net Banking',style: TextStyle(fontSize: 25),),
                      leading: Radio(
                        value: 'method3',
                        groupValue: selectedPaymentMethod,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentMethod = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 7,right: 7),
                      child: Divider(
                        color: Colors.black87,
                        thickness: 1,
                      ),
                    ),

                    ListTile(
                      title: Text('Cash on Delivery',style: TextStyle(fontSize: 25),),
                      leading: Radio(
                        value: 'method4',
                        groupValue: selectedPaymentMethod,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentMethod = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>place()));
              },
              child: Text("Continue", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange), // Set the background color to orange
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Set the radius (adjust as needed)
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(200, 50)), // Set the height (adjust as needed)
              ),
            )

          )
        ],
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
