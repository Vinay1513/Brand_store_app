import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          height: 465,
          width: 375,
          child: Image.asset(
            'assets/images/Rectangle989.png',
            height: 375,
            width: 465,
            fit: BoxFit.cover,
          )),
      Container(
          margin: EdgeInsets.only(top: 10, left: 30),
          height: 200,
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find The ',
                style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                ),
              ),
              Text(
                'Best Collections',
                style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                ),
              ),
              Container(
                  height: 48,
                  width: 301,
                  child: Text(
                    'Get your dream item easily with FashionHub and get other intersting offer',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ))
            ],
          )),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            height: 62,
            width: 152,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(90)),
                border: Border.all(
                  color: Colors.black,
                )),
            child: Center(
              child: Text(
                "Sign Up",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 62,
            width: 152,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(90)),
                color: const Color.fromRGBO(255, 122, 0, 1)),
            child: Center(
              child: Text(
                "Sign In",
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
