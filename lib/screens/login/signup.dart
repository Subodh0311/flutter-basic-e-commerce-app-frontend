import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mainproject/screens/login/firstscreen.dart';
import 'login2.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  void initstate(){
    super.initState();
    Firebase.initializeApp();
  }

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _checkpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text("Create Account",style: TextStyle(
                    fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
            ),


              SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: TextField(controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Enter Email',
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


            SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: TextField(controller: _name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Enter Name',
                    prefixIcon: Icon(Icons.people,color: Colors.grey,),
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







            SizedBox(height: 30,),


            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: TextField(controller: _password,
                keyboardType: TextInputType.visiblePassword,
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


            SizedBox(height: 30,),

            ElevatedButton(onPressed: (){
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: _email.text, password: _password.text).then((value){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }).
              onError((error, stackTrace){
                print(error);
              });

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
            SizedBox(height: 15,),
            Text("I Already Have An Account?",style: TextStyle(fontSize: 20),),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>login2()));
            },
                child: Text("Login",style: TextStyle(fontSize: 25),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                side: BorderSide(width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
