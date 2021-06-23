import 'package:covid19/main.dart';
import 'package:covid19/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoUI();
  }
}

class InfoUI extends StatefulWidget {
  const InfoUI({Key? key}) : super(key: key);

  @override
  _InfoUIState createState() => _InfoUIState();
}

class _InfoUIState extends State<InfoUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    )),
                // Text(
                //   "Covid 19",
                //   style: TextStyle(
                //       fontFamily: GoogleFonts.roboto().fontFamily,
                //       fontWeight: FontWeight.w700,
                //       color: Colors.black),
                // ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    )),
              ],
            ),
            centerTitle: true,
            backgroundColor: Colors.yellow,
          ),
          body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Covid 19",
                            style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w300,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10.0, bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Virus Tracking",
                            style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 27,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.356,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.green,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Center(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.28,
                                  width:
                                      MediaQuery.of(context).size.width * 0.92,
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
                              left: MediaQuery.of(context).size.width - 440,
                              child: Image.asset(
                                "assets/images/patient.png",
                                fit: BoxFit.contain,
                                height: 260,
                                width: 680,
                              ),
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width - 330,
                              top: MediaQuery.of(context).size.width - 370,
                              child: Image.asset(
                                "assets/images/v5.png",
                                fit: BoxFit.contain,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width - 360,
                              top: MediaQuery.of(context).size.width - 300,
                              child: Image.asset(
                                "assets/images/v6.png",
                                fit: BoxFit.contain,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Positioned(
                              right: MediaQuery.of(context).size.width - 200,
                              top: MediaQuery.of(context).size.width - 350,
                              child: Image.asset(
                                "assets/images/v4.png",
                                fit: BoxFit.contain,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Positioned(
                              right: MediaQuery.of(context).size.width - 250,
                              bottom: MediaQuery.of(context).size.width - 320,
                              child: Image.asset(
                                "assets/images/v6.png",
                                fit: BoxFit.contain,
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width - 320,
                              top: MediaQuery.of(context).size.width - 240,
                              child: Wrap(
                                direction: Axis.vertical,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.width *
                                        0.16,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    // color: Colors.green,
                                    child: Text(
                                      "What To Do if You Are Sick ?",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 22,
                                          color: Colors.red),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Learn More ->",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        // color: Colors.red,
                        height: MediaQuery.of(context).size.width * 0.92,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          (MaterialPageRoute(
                                              builder: (context) =>
                                                  Symptoms())));
                                    },
                                    child: Container(
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50.0, left: 1.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              child: Container(
                                                color: Color(0xFF4BFF04f),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.35,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.001,
                                            bottom: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.17,
                                            child: Hero(
                                              tag: "symptoms",
                                              child: Image.asset(
                                                "assets/images/symptoms.png",
                                                height: 100,
                                                width: 160,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            bottom: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.001,
                                            child: Wrap(
                                              direction: Axis.vertical,
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  // color: Colors.amber,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Symptoms and Testing",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                GoogleFonts
                                                                        .lato()
                                                                    .fontFamily,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 15,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.red,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 50.0, left: 20.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            child: Container(
                                              color: Color(0xFF00FFC8),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.35,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.17,
                                          child: Image.asset(
                                            "assets/images/prevention.png",
                                            height: 100,
                                            width: 160,
                                          ),
                                        ),
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.001,
                                          child: Wrap(
                                            direction: Axis.vertical,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.18,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                // color: Colors.amber,
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "Prevent getting sick",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              GoogleFonts.lato()
                                                                  .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 15,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 60.0, left: 1.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            child: Container(
                                              color: Color(0xFFFF6701),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.35,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.17,
                                          child: Image.asset(
                                            "assets/images/care.png",
                                            height: 100,
                                            width: 160,
                                          ),
                                        ),
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.001,
                                          child: Wrap(
                                            direction: Axis.vertical,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.18,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.43,
                                                // color: Colors.amber,
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "Health Care Professionals",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              GoogleFonts.lato()
                                                                  .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 15,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.red,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 50.0, left: 20.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            child: Container(
                                              color: Color(0xFFFF0AEB),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.35,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.17,
                                          child: Image.asset(
                                            "assets/images/news.png",
                                            height: 100,
                                            width: 160,
                                          ),
                                        ),
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.001,
                                          child: Wrap(
                                            direction: Axis.vertical,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.18,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.42,
                                                // color: Colors.amber,
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "Cases & latest updates",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              GoogleFonts.lato()
                                                                  .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 15,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
