import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Mornas, Jakarta.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(15),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 4,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Color(0xFFB8B8B8),
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.redAccent,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Monumen Nasional",
                        style: GoogleFonts.getFont(
                          "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Color(0xFF232323),
                        ),
                      ),
                      Text(
                        "Show Map",
                        style: GoogleFonts.getFont(
                          "Roboto Condensed",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color.fromARGB(255, 83, 99, 123),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 5),
                    Text(
                      "4.6 (114.483 Reviews)",
                      style: GoogleFonts.getFont(
                        "Roboto Condensed",
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xFF606060),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Monumen Nasional atau yang disingkat dengan Monas atau Tugu Monas adalah monumen peringatan setinggi 132 meter yang terletak tepat di tengah Lapangan Medan Merdeka, Jakarta Pusat.",
                  style: GoogleFonts.getFont(
                    "Roboto Condensed",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xFF606060),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Facilities",
                        style: GoogleFonts.getFont(
                          "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF232323),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildCard(
                            assetPath: "assets/vectors/vector_2_x2.svg",
                            text: "1 Heater",
                          ),
                          _buildCard(
                            assetPath: "assets/vectors/vector_1_x2.svg",
                            text: "1 Dinner",
                          ),
                          _buildCard(
                            assetPath: "assets/vectors/vector_x2.svg",
                            text: "1 Tub",
                          ),
                          _buildCard(
                            assetPath: "assets/vectors/vector_3_x2.svg",
                            text: "1 Pool",
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                  "Price",
                  style: GoogleFonts.getFont(
                    "Roboto Condensed",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF232323),
                  ),
                ),
                    ),
                     Text(
                  "\$199",
                  style: GoogleFonts.getFont(
                    "Montserrat",
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xE2FF5252),
                  ),
                ),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                   
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 60,
                    width: MediaQuery.of(context).size.width / 1.8,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 83, 99, 123),
                    ),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: GoogleFonts.getFont(
                          "Roboto Condensed",
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String assetPath, required String text}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.fromLTRB(0, 14, 0, 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0x0D176FF2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: 30,
              height: 28,
              child: SvgPicture.asset(assetPath),
            ),
            Padding(
              padding: EdgeInsets.only(right: 1.3),
              child: Text(
                  text,
                  style: GoogleFonts.getFont(
                    "Roboto Condensed",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black26,
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
