

import 'package:canine_care/pages/contact.dart';
import 'package:canine_care/screens/blog.dart';
import 'package:canine_care/screens/donation.dart';
import 'package:canine_care/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:canine_care/screens/login.dart';
import 'package:canine_care/screens/register.dart';
import 'package:canine_care/screens/home_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  {
    runApp(
      MaterialApp(
        home: const SplashScreen(),
        theme: ThemeData(fontFamily: 'Circular'),
        debugShowCheckedModeBanner: false,
        routes: {
          'register': (context) => const MyRegister(),
          'login': (context) => const MyLogin(),
          'home_screen':(context)=>const HomeScreen(),
          'splash':(context)=>const SplashScreen(),
          'contact':(context)=>Contact(),
          'donation':(context)=>Donation(),
          'blog':(context)=>Blog(),

        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SplashScreen()
      ),
    );
  }
}

