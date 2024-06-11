import 'package:brand_store_app/Screens/favourite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> items = [
    {
      'text1': "Premium",
      'text2': "Tangerine Shirt",
      'img': "assets/images/Rectangle980.png",
      'price': 257.85,
      'details': "Yellow Size 8",
      'isFavorited': false,
    },
    {
      'text1': "Leather",
      'text2': "Tangerine Coat",
      'img': "assets/images/Rectangle981.png",
      'price': 257.85,
      'details': "Yellow Size 8",
      'isFavorited': false,
    },
  ];

  List<Map<String, dynamic>> favoriteItems = [];

  void addToFavorites(int index) {
    setState(() {
      items[index]['isFavorited'] = !items[index]['isFavorited'];
      if (items[index]['isFavorited']) {
        favoriteItems.add(items[index]);
      } else {
        favoriteItems.remove(items[index]);
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void navigateToFavoritesPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => FavouriteScreen(favoriteItems: favoriteItems),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 50),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 50),
                  child: Text(
                    "Cart",
                    style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 50),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: navigateToFavoritesPage,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30),
              child: Text(
                "My Orders",
                style: GoogleFonts.imprima(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Slidable(
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      extentRatio: 0.3,
                      motion: const DrawerMotion(),
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 55,
                                width: 92,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 122, 0, 1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          items[index]['isFavorited']
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: items[index]['isFavorited']
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ),
                                      onTap: () {
                                        addToFavorites(index);
                                      },
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onTap: () {
                                        removeItem(index);
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 160,
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(items[index]['img']),
                          const SizedBox(width: 5),
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 144,
                            width: 119,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index]['text1'],
                                  style: GoogleFonts.imprima(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(13, 13, 14, 1),
                                  ),
                                ),
                                Text(
                                  items[index]['text2'],
                                  style: GoogleFonts.imprima(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(13, 13, 14, 1),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    items[index]['details'],
                                    style: GoogleFonts.imprima(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(13, 13, 14, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "\$${items[index]['price']}",
                                    style: GoogleFonts.imprima(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(13, 13, 14, 1),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 98, bottom: 10),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "1",
                                    style: GoogleFonts.imprima(
                                      fontSize: 34,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(13, 13, 14, 1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "X",
                                    style: GoogleFonts.imprima(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(13, 13, 14, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              endIndent: 20,
              indent: 30,
              color: Color.fromRGBO(227, 227, 227, 1),
              thickness: 2.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              height: 90,
              width: 315,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Total Items (3)",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(121, 119, 128, 1)),
                      ),
                      Spacer(),
                      Text(
                        "\$${116.00}",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(13, 13, 14, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Standard Delivery",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(121, 119, 128, 1)),
                      ),
                      Spacer(),
                      Text(
                        "\$${12.00}",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(13, 13, 14, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Payment",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(121, 119, 128, 1)),
                      ),
                      Spacer(),
                      Text(
                        "\$${126.00}",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 3, 3, 3)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 140,
              ),
              height: 62,
              width: 152,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(90)),
                  color: const Color.fromRGBO(255, 122, 0, 1)),
              child: Center(
                child: Text(
                  "Checkout Now",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
