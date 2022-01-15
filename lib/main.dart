import 'package:flutter/material.dart';
import 'package:my_app_1/screens/home.dart';
import 'package:my_app_1/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: SplashScreen(),
    );
  }
}
