import 'package:flutter/material.dart';
import 'package:formvalid/Loginscreen.dart';
import 'package:formvalid/scsess.dart';
import 'Homescreen.dart';

void main(List<String> args) {
  runApp(CatTask7());
}

class CatTask7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'SuccessScreen': (context) => SuccessScreen(),
        'LoginScreen': (context) => Loginscreen(),
        'HomeScreen': (context) => homeScreen(),
      },
      home: homeScreen(),
    );
  }
}
