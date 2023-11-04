import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mainproject/screens/login/Profile/profile.dart';
import 'package:mainproject/screens/login/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


import 'screens/login/cart.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
    '/cart': (context) => Cart(),
    '/profile': (context) => Profile(),
    },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AnimatedSplashScreen(
        nextScreen: login(),
        splash: Image.asset('assets/images/img8.jpg'),
        splashIconSize: 300,
        duration: 3000,
        splashTransition: SplashTransition.slideTransition,
      )
    );
  }
}