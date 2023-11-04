import 'package:flutter/material.dart';
import 'package:mainproject/screens/login/login2.dart';
import 'package:mainproject/constants/cons_img.dart';
import 'package:mainproject/screens/login/signup.dart';
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: kToolbarHeight+20,
            ),
            Text('WELCOME',style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 15,),
            Text("Get Started By SigningUp,",style: TextStyle(fontSize: 25),),
            SizedBox(height: 5,),
            Text("Or Login If Have An Account",style: TextStyle(fontSize: 25),),
            SizedBox(height: 50,),
            Center(
              child: Image.asset(AssetsImages.instance.welcomeImage,
                scale: 0.8,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login2()));
                },
                  child: Text("Login",style: TextStyle(fontSize: 25),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    side: BorderSide(width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                },
                  child: Text("Signup",style: TextStyle(fontSize: 25),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    side: BorderSide(width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
