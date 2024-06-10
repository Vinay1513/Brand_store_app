import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> categories = [
    {
      'name': "All",
      'bgcolor': const Color.fromRGBO(255, 122, 0, 1),
      'color': const Color.fromRGBO(255, 255, 255, 1),
    },
    {
      'name': "Men",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(13, 13, 14, 1),
    },
    {
      'name': "Women",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(13, 13, 14, 1),
    },
    {
      'name': "Kids",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(13, 13, 14, 1),
    },
    {
      'name': "Others",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(13, 13, 14, 1),
    }
  ];

  final List<Map<String, String>> imgs = [
    {
      'img': "assets/images/Rectangle980.png",
      'height': '180',
      'left': '130',
      'price': '240.32',
      'title': 'Tangerine Shirt',
      'top': '200'
    },
    {
      'img': "assets/images/Rectangle981.png",
      'height': '120',
      'left': '130',
      'price': '325.36',
      'title': 'Leather Coat',
      'top': '150'
    },
    {
      'img': "assets/images/Rectangle983.png",
      'height': '120',
      'left': '130',
      'price': '126.47',
      'title': 'Tangerine Shirt',
      'top': '150'
    },
    {
      'img': "assets/images/Rectangle984.png",
      'height': '180',
      'left': '130',
      'price': '257.85',
      'title': 'Leather Coat',
      'top': '200'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 50),
                  child: Image.asset("assets/images/Menu.png"),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 50),
                  child: Image.asset("assets/images/Profile (1).png"),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 60, left: 30),
              height: 82,
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore",
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                  Text(
                    "Best trendy collection!",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 20),
              height: 32,
              width: 354,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 32,
                      width: 65,
                      decoration: BoxDecoration(
                        color: categories[index]['bgcolor'],
                        borderRadius: BorderRadius.circular(32),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        categories[index]['name'],
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: categories[index]['color'],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0.0,
              ),
              child: GridView.builder(
                physics:
                    const NeverScrollableScrollPhysics(), // Prevents scrolling
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 containers per row
                  crossAxisSpacing: 6.0, // spacing between columns
                  mainAxisSpacing: 2.0, // spacing between rows
                ),
                itemCount: imgs.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          height: 250,
                          width: 154,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0.0, left: 0.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Image.asset(
                                    imgs[index]['img']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: double.parse(imgs[index]['height']!),
                        left: double.parse(imgs[index]['left']!),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(245, 245, 247, 1),
                            shape: BoxShape.circle,
                          ),
                          height: 36,
                          width: 36,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 29,
                                width: 29,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(13, 13, 14, 1),
                                ),
                                child: const Icon(Icons.shopping_bag_sharp,
                                    color: Color.fromRGBO(245, 245, 247, 1)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: double.parse(imgs[index]['top']!),
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$${imgs[index]['price']}',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              imgs[index]['title']!,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(121, 119, 128, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Stack(
          children: <Widget>[
            Container(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
              height: 82.0,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: Color.fromRGBO(255, 122, 0, 1),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 122, 0, 1)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.shopping_bag_outlined, color: Colors.black),
                      Text(
                        "Cart",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
