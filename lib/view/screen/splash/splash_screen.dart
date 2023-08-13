import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sisonke/util/images.dart';
import 'package:sisonke/view/screen/auth/login_screen.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    _splashDelay();
    super.initState();
  }

  void _splashDelay() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: width*0.8,
              height: height*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Images.splash_logo),
                  fit: BoxFit.cover,

                ),
              ),
              child: null /* add child content here */,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
