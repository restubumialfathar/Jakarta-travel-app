import 'package:aspen_project/widgets/popular_item.dart';
import 'package:aspen_project/widgets/recommended_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Jakarta",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.location_solid,
                        color: Color.fromARGB(255, 83, 99, 123),
                        size: 20,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Jakarta, IDN",
                        style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF606060)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF3F8FE),
                    borderRadius: BorderRadius.circular(24)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find places to visit",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  ),
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Color.fromARGB(255, 83, 99, 123),
              labelColor: Color.fromARGB(255, 83, 99, 123),
              unselectedLabelColor: Color(0xFFB8B8B8),
              labelStyle: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              unselectedLabelStyle: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w400, fontSize: 16),
              tabs: [
                Tab(text: "Location"),
                Tab(text: "Hotels"),
                Tab(text: "Food"),
                Tab(text: "Adventure"),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                buildTabContent("Location"),
                buildTabContent("Hotels"),
                buildTabContent("Food"),
                buildTabContent("Adventure"),
              ],
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color.fromARGB(255, 83, 99, 123),
          currentIndex: 0,
          unselectedItemColor: Colors.black38,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }

  Widget buildTabContent(String tab) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF232323)),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color.fromARGB(255, 83, 99, 123),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularItem(
                      title: "Monumen Nasional",
                      rating: "4.6",
                      image:
                          "assets/images/Moans Jakarta #monas #jakarta.jpeg"),
                  SizedBox(
                    width: 16,
                  ),
                  PopularItem(
                      title: "Masjid Istiqlal",
                      rating: "4.8",
                      image:
                          "assets/images/The Grand Istiqlal Mosque, Jakarta Indonesia….jpeg"),
                ],
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF232323)),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color.fromARGB(255, 83, 99, 123),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedCard(
                      title: "Explore Jakarta",
                      duration: "4N/5D",
                      deal: "Hot Deal",
                      image: "assets/images/Mercure, Jakarta, Batavia.jpeg"),
                  SizedBox(
                    width: 16,
                  ),
                  RecommendedCard(
                      title: "Luxurious Place",
                      duration: "2N/3D",
                      deal: "New Deal",
                      image: "assets/images/Gallery of Indoor Bamboo Solutions in Hotel Jakarta - 1.jpeg"),
                  SizedBox(
                    width: 16,
                  ),
                  RecommendedCard(
                      title: "Explore Jakarta",
                      duration: "4N/5D",
                      deal: "Hot Deal",
                      image: "assets/images/Mercure, Jakarta, Batavia.jpeg"),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
