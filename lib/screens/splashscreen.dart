import 'dart:async';

import 'package:ai_musicplayer/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  //const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
              child: HomeScreen(),
              type: PageTransitionType.rightToLeftWithFade,
              duration: Duration(seconds: 1)
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Youtube videos Ad free',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            FlutterLogo(
              size: 500,
            ),
            CircularProgressIndicator(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
