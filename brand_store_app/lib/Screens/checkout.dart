import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
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
                      padding: const EdgeInsets.only(left: 152, top: 50),
                      child: Text(
                        "Cart",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: Text(
                    "Delivery Address",
                    style: GoogleFonts.imprima(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    height: 48,
                    width: 315,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 46,
                            width: 46,
                            decoration:
                                const BoxDecoration(color: Colors.amber),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 48,
                            width: 164,
                            child: Text(
                              "25/3 Housing Estate, Sylhet",
                              style: GoogleFonts.imprima(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(13, 13, 14, 1),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Change",
                            style: GoogleFonts.imprima(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(121, 119, 128, 1),
                            ),
                          )
                        ])),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.access_time_sharp),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Delivered in next 7 days",
                          style: GoogleFonts.imprima(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(13, 13, 14, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Payment Method",
                  style: GoogleFonts.imprima(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/Group17305.png"),
                Container(
                  margin: const EdgeInsets.only(top: 60, left: 150),
                  child: Text(
                    "Add Voucher",
                    style: GoogleFonts.imprima(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 72,
                  width: 315,
                  child: RichText(
                    text: const TextSpan(
                      text: "Note: ",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1), fontSize: 15),
                      children: [
                        TextSpan(
                          text:
                              "Use your order ID at the payment. Your ID is #154619. If you forget to put your order ID, we can’t confirm the payment.",
                          style: TextStyle(
                              color: Color.fromRGBO(13, 13, 14, 1),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 70,
                  ),
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
                          const Spacer(),
                          Text(
                            "\$${116.00}",
                            style: GoogleFonts.imprima(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(13, 13, 14, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(
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
                          const Spacer(),
                          Text(
                            "\$${12.00}",
                            style: GoogleFonts.imprima(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(13, 13, 14, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(
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
                          const Spacer(),
                          Text(
                            "\$${126.00}",
                            style: GoogleFonts.imprima(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 3, 3, 3)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 40,
                    left: 120,
                  ),
                  height: 62,
                  width: 152,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                      color: Color.fromRGBO(255, 122, 0, 1)),
                  child: Center(
                    child: Text(
                      "Pay Now",
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
        ));
  }
}
