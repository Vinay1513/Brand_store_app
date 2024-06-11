import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems;

  FavouriteScreen({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteItems[index]['text2']),
            subtitle: Text('\$${favoriteItems[index]['price']}'),
            leading: Image.asset(
              favoriteItems[index]['img'],
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
