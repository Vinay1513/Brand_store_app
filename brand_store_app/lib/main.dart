//import 'package:brand_store_app/Screens/cart.dart';
//import 'package:brand_store_app/Screens/detailscreen.dart';
import 'package:brand_store_app/Screens/checkout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Brand Store App',
      debugShowCheckedModeBanner: false,
      home: CheckOutScreen(),
    );
  }
}
