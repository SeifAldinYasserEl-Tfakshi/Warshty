import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:warshtyflutter/SignIn.dart';
import 'package:warshtyflutter/booking/booking_time.dart';
import 'package:warshtyflutter/mainpage.dart';
import 'package:warshtyflutter/places/car1.dart';
import 'package:warshtyflutter/places/utils.dart';
import 'package:warshtyflutter/register.dart';
import 'package:page_transition/page_transition.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Material App',routes: {
        "SignIn": (context) => SignIn(),
        "register": (context) => register(),
        "homepage": (context) => mainpage(),

      },
      home:  AnimatedSplashScreen(
          duration: 700,splashIconSize: 300,
          splash:  'assets/warshty_logo.jpg',
          nextScreen: SignIn(),

          splashTransition: SplashTransition.sizeTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          backgroundColor: Colors.white
      )
    );
  }
}
