
import 'package:flutter/material.dart';
import 'package:nirvana/screens/homeScreen.dart';
import 'package:nirvana/screens/navigationScreen.dart';
import 'package:nirvana/screens/splashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}