import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travelingapp/components/search_button.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          backgroundColor: Colors.white,
          color: Colors.grey,
          activeColor: Colors.white,
          tabBackgroundColor: Color(0xff1CB986),
          onTabChange: (index) {
            print(index);
          },
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: "home",
            ),
            GButton(
              icon: Icons.explore_outlined,
              text: "explore",
            ),
            GButton(
              icon: Icons.notifications_outlined,
              text: "notifications",
            ),
            GButton(
              icon: Icons.person_outlined,
              text: "profile",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(35),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Icon(Icons.notifications_outlined),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Where Do You",
                          style: GoogleFonts.poppins(
                            color: Color(0xfff121420),
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Want Go",
                          style: GoogleFonts.poppins(
                            color: Color(0xfff121420),
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              MySearch(
                  controller: controller,
                  hintText: "Search your trip",
                  obscuretext: false,
                  Widget1: Icon(Icons.search)),
              SizedBox(height: 20),
              Container(
                child: Row(
                  children: [
                    Text(
                      "All",
                      style: GoogleFonts.poppins(color: Color(0xff1BBA85)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("asset/bermudaUSA.png"),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Bermudha, USA",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Starting at Rp.10.000.000-",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 10),
                              ),
                              IconButton(
                                  onPressed: (() {}),
                                  icon: Image.asset("asset/favorite.png")),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("asset/LandUSA.png"),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "land, USA",
                            style:
                                GoogleFonts.poppins(color: Color(0xFFFFFFFF)),
                          ),
                          Text(
                            "starting at Rp.20.000.000-",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Container(
                      width: 200,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("asset/LandUSA.png"),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Popular Catagories",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("asset/Trip.png"),
                      SizedBox(height: 10),
                      Text(
                        "Trip",
                        style: TextStyle(
                            color: Color(0xffE5E5E5),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("asset/hotel.png"),
                      SizedBox(height: 10),
                      Text(
                        "hotel",
                        style: TextStyle(
                            color: Color(0xffE5E5E5),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("asset/Transport.png"),
                      SizedBox(height: 10),
                      Text(
                        "Transport",
                        style: TextStyle(
                            color: Color(0xffE5E5E5),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("asset/event.png"),
                      SizedBox(height: 10),
                      Text(
                        "event",
                        style: TextStyle(
                            color: Color(0xffE5E5E5),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
