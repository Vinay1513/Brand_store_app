import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<Map<String, dynamic>> items = [
    {
      'size': "S",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(121, 119, 128, 1)
    },
    {
      'size': "M",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(121, 119, 128, 1),
    },
    {
      'size': "L",
      'bgcolor': const Color.fromRGBO(13, 13, 14, 1),
      'color': const Color.fromRGBO(255, 255, 255, 1),
    },
    {
      'size': "XL",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(121, 119, 128, 1),
    },
    {
      'size': "XXL",
      'bgcolor': const Color.fromRGBO(255, 255, 255, 1),
      'color': const Color.fromRGBO(121, 119, 128, 1),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 50),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text("Details",
                style: GoogleFonts.imprima(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 110.0, top: 50),
            child: Icon(Icons.save),
          )
        ],
      ),
      Container(
          margin: EdgeInsets.only(left: 30, top: 20),
          height: 400,
          width: 315,
          child: Image.asset(
            "assets/images/Rectangle980.png",
            height: 400,
            width: 315,
            fit: BoxFit.cover,
          )),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            height: 70,
            width: 209,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Premium ',
                    style: GoogleFonts.imprima(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    )),
                Text("Tagerine Shirt",
                    style: GoogleFonts.imprima(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 50),
              child: Image.asset("assets/images/Options.png")),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 10),
        child: Text("Size",
            style: GoogleFonts.imprima(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(13, 13, 14, 1),
            )),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10, left: 10),
        height: 44,
        width: 314,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 44,
                width: 45,
                decoration: BoxDecoration(
                  color: items[index]['bgcolor'],
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  items[index]['size'],
                  style: GoogleFonts.imprima(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: items[index]['color'],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("\$${257.85}",
                style: GoogleFonts.imprima(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, top: 10),
            height: 62,
            width: 152,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(90)),
                color: const Color.fromRGBO(255, 122, 0, 1)),
            child: Center(
              child: Text(
                "Add To Cart",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          )
        ],
      )
    ])));
  }
}
