import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mainproject/screens/login/signup.dart';
import 'firstscreen.dart';
class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  void initstate(){
    super.initState();
    Firebase.initializeApp();
  }

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: kToolbarHeight,),
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 100),
            child: Text("Login To Continue",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
          ),




          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50,left: 30,right: 30,),
              child: TextField(controller: _email,
                decoration: InputDecoration(hintText: 'Enter Email ID',
                  prefixIcon: Icon(Icons.email,color: Colors.grey,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 3,),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent.shade700,width: 3,),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50,left: 30,right: 30,),
              child: TextField(controller: _password,
                decoration: InputDecoration(hintText: 'Enter Password',
                  prefixIcon: Icon(Icons.password,color: Colors.grey,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 3,),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent.shade700,width: 3,),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(onPressed: (){
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _email.text, password: _password.text).then((value){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                }).
                onError((error, stackTrace){
                  print(error);
                });
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text("Don't have an account?",style: TextStyle(fontSize: 20,),),
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
              },
                  child: Text("Signup",style: TextStyle(fontSize: 20),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
