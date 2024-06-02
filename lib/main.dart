import 'package:flutter/material.dart';
import 'package:flutter_pro_2/Screens/Welcome_Screen.dart';

void main(){
  runApp(const MyHealthcareApp());
}

class MyHealthcareApp extends StatelessWidget {
  const MyHealthcareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
