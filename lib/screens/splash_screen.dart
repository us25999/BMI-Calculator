import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app_1/constants/app_constants.dart';
import 'package:my_app_1/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentHexColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "BMI",
              style: TextStyle(fontSize: 200, color: mainHexColor),
            ),
            Text(
              "Body Mass Index",
              style: TextStyle(fontSize: 43, color: mainHexColor),
            ),
          ],
        ),
      ),
    );
  }
}
