import 'package:covid19/info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SymptomsUI();
  }
}

class SymptomsUI extends StatefulWidget {
  const SymptomsUI({Key? key}) : super(key: key);

  @override
  _SymptomsUIState createState() => _SymptomsUIState();
}

class _SymptomsUIState extends State<SymptomsUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.yellow,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_rounded,
                    color: Colors.black,
                  ),
                  label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  label: "Chat"),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.yellow,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          (MaterialPageRoute(builder: (context) => Info())));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 35,
                      color: Colors.black,
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Symptoms & Testing",
                    style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.37,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.green,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.28,
                              width: MediaQuery.of(context).size.width * 0.92,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xF12A70B6),
                                        spreadRadius: 4,
                                        blurRadius: 12,
                                        offset: Offset(0, 0))
                                  ]),
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width - 350,
                          top: MediaQuery.of(context).size.height - 730,
                          child: Hero(
                            tag: "symptoms",
                            child: Image.asset(
                              "assets/images/symptoms.png",
                              fit: BoxFit.contain,
                              height: 200,
                              width: 550,
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width - 340,
                          top: MediaQuery.of(context).size.width - 360,
                          child: Image.asset(
                            "assets/images/v5.png",
                            fit: BoxFit.contain,
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width - 410,
                          top: MediaQuery.of(context).size.width - 340,
                          child: Image.asset(
                            "assets/images/v6.png",
                            fit: BoxFit.contain,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width - 180,
                          top: MediaQuery.of(context).size.width - 340,
                          child: Image.asset(
                            "assets/images/v4.png",
                            fit: BoxFit.contain,
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width - 170,
                          bottom: MediaQuery.of(context).size.width - 330,
                          child: Image.asset(
                            "assets/images/v6.png",
                            fit: BoxFit.contain,
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width - 340,
                          top: MediaQuery.of(context).size.width - 290,
                          child: Wrap(
                            direction: Axis.vertical,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.09,
                                width: MediaQuery.of(context).size.width * 0.5,
                                // color: Colors.green,
                                child: Text(
                                  "Call Your Doctor",
                                  style: TextStyle(
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 15,
                                      color: Colors.red),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.15,
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  "If you think you have been exposted to Covid-19",
                                  style: TextStyle(
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 12,
                                      color: Colors.red),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Chat With Online Doctor",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Symptoms",
                            style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            "More>>",
                            style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.5,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.amber,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.4,
                              width: MediaQuery.of(context).size.width * 0.43,
                              color: Color(0xFF96F300),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/fever.png",
                                    height: 100,
                                    width: 280,
                                  ),
                                  Text(
                                    "High Fever",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.4,
                              width: MediaQuery.of(context).size.width * 0.43,
                              color: Color(0xFFFF670F),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/cough.png",
                                    height: 100,
                                    width: 280,
                                  ),
                                  Text(
                                    "Cough",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.4,
                              width: MediaQuery.of(context).size.width * 0.43,
                              color: Color(0xFF0AFFCA),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/tierd.png",
                                    height: 100,
                                    width: 280,
                                  ),
                                  Text(
                                    "Tired",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.4,
                              width: MediaQuery.of(context).size.width * 0.43,
                              color: Color(0xFFFF06F3),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/headache.png",
                                    height: 100,
                                    width: 280,
                                  ),
                                  Text(
                                    "Headache",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.4,
                              width: MediaQuery.of(context).size.width * 0.43,
                              color: Color(0xFFF35900),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset(
                                      "assets/images/chestpain.png",
                                      height: 100,
                                      width: 280,
                                    ),
                                  ),
                                  Text(
                                    "Chest Pain",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Training Videos",
                            style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            "More>>",
                            style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.9,
                      color: Color(0xFFFF15FF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/training.png",
                                // fit: BoxFit.contain,
                                height: 120,
                                width: 135,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: MediaQuery.of(context).size.width * 0.35,
                              width: MediaQuery.of(context).size.width * 0.4,
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Safety & Health Topic",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Protect yourself and others around you by taking appropriate precautions. Follow advice provided by your local health authority.",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
