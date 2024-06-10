import 'package:brand_store_app/Screens/homescreen.dart';
//import 'package:brand_store_app/Screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brand Store App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
