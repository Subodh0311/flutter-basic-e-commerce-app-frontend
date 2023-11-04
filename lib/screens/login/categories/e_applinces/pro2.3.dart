import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Profile/profile.dart';
import '../../cart.dart';





class pro2_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: HorizontalScrollImages(),
      ),
    );
  }
}

class HorizontalScrollImages extends StatefulWidget {
  @override
  _HorizontalScrollImagesState createState() => _HorizontalScrollImagesState();
}

class _HorizontalScrollImagesState extends State<HorizontalScrollImages> {
  int quantity = 1;
  int pageIndex = 0;
  List<Widget> pages = [
    Cart(),
    Profile(),
  ];
  final List<String> imageUrls = [
    "https://5.imimg.com/data5/OO/VI/MY-18929878/wt-eon-651-pf-washing-machine.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        // ... Your existing content
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.all(10),
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Divider(
                color: Colors.black87,
                thickness: 2,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product 1",
                    style: TextStyle(fontSize: 25),
                  ),
                  Row(
                    children: [
                      Text("4.0  ", style: TextStyle(fontSize: 20)),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star_border, color: Colors.orange),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam gravida orci nec justo posuere, vel vehicula massa varius. Nunc",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Rs.100",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent.shade700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement the "Buy Now" functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement the "Add to Cart" functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "QTY: ",
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove, // Customize the remove icon
                    color: Colors.deepOrange, // Change the color
                    size: 30, // Change the size

                  ),
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) {
                        quantity--;
                      }
                    });
                  },
                ),
                Text(
                  quantity.toString(),
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add, // Customize the add icon
                    color: Colors.deepOrange, // Change the color
                    size: 30, // Change the size
                  ),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Divider(
                color: Colors.black87,
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,right: 240),
              child: Text("Features",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30),
                  child: Text("\u2022",style: TextStyle(fontSize: 40),),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: Text("Feat 1:",style: TextStyle(fontSize: 25),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 20),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam gravida orci nec justo posuere",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30),
                  child: Text("\u2022",style: TextStyle(fontSize: 40),),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: Text("Feat 2:",style: TextStyle(fontSize: 25),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 20),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam gravida orci nec justo posuere",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30),
                  child: Text("\u2022",style: TextStyle(fontSize: 40),),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: Text("Feat 3:",style: TextStyle(fontSize: 25),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 20),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam gravida orci nec justo posuere",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Divider(
                color: Colors.black87,
                thickness: 2,
              ),
            ),
            Container(
              height: 700,
              width: 392,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 150),
                    child: Text("Customer reviews:",style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star_border, color: Colors.orange),
                        Text("4.0 out of 5.0 ", style: TextStyle(fontSize: 20)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,right: 170,bottom: 8),
                    child: Text("2390 global ratings", style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Divider(
                      color: Colors.black87,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,right: 200),
                    child: Text("Top reviews:",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.person_outline_rounded,color: Colors.grey, size: 30,),
                        Text("User_1",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star_border, color: Colors.orange),
                        Text("Verified Purchase", style: TextStyle(fontSize: 16)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam gravida orci nec justo posuere",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 30),
                    child: Row(
                      children: [
                        OutlinedButton(onPressed: (){},
                          child: Text("Helpful ?",style: TextStyle(color: Colors.orange,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10),
                          child: Icon(Icons.share,color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:2),
                          child: Text("Share",style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Icon(Icons.report,color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:2),
                          child: Text("Report",style: TextStyle(fontSize: 20),),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.person_outline_rounded,color: Colors.grey, size: 30,),
                        Text("User_2",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star_border, color: Colors.orange),
                        Text("Verified Purchase", style: TextStyle(fontSize: 16)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam gravida orci nec justo posuere",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 30),
                    child: Row(
                      children: [
                        OutlinedButton(onPressed: (){},
                          child: Text("Helpful ?",style: TextStyle(color: Colors.orange,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10),
                          child: Icon(Icons.share,color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:2),
                          child: Text("Share",style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Icon(Icons.report,color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:2),
                          child: Text("Report",style: TextStyle(fontSize: 20),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
