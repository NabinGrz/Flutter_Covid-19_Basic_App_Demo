import 'package:covid19/info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
    );
  }
}

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  _SplashScreenUIState createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.59,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/info.png",
                        fit: BoxFit.contain,
                        height: 280,
                        width: 700,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height * 0.08,
                      top: MediaQuery.of(context).size.height * 0.08,
                      child: Image.asset(
                        "assets/images/v1.png",
                        // fit: BoxFit.contain,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height * 0.15,
                      top: MediaQuery.of(context).size.height * 0.08,
                      child: Image.asset(
                        "assets/images/v2.png",
                        // fit: BoxFit.contain,
                        height: 30,
                        width: 25,
                      ),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.height * 0.1,
                      top: MediaQuery.of(context).size.height * 0.06,
                      child: Image.asset(
                        "assets/images/v2.png",
                        // fit: BoxFit.contain,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.height * 0.009,
                      top: MediaQuery.of(context).size.height * 0.15,
                      child: Image.asset(
                        "assets/images/v3.png",
                        // fit: BoxFit.contain,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height * 0.009,
                      top: MediaQuery.of(context).size.height * 0.15,
                      child: Image.asset(
                        "assets/images/v4.png",
                        // fit: BoxFit.contain,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height * 0.009,
                      top: MediaQuery.of(context).size.height * 0.4,
                      child: Image.asset(
                        "assets/images/v5.png",
                        // fit: BoxFit.contain,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.height * 0.09,
                      bottom: MediaQuery.of(context).size.height * 0.05,
                      child: Image.asset(
                        "assets/images/v1.png",
                        // fit: BoxFit.contain,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.height * 0.2,
                      bottom: MediaQuery.of(context).size.height * 0.05,
                      child: Image.asset(
                        "assets/images/v4.png",
                        // fit: BoxFit.contain,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height * 0.2,
                      top: MediaQuery.of(context).size.height * 0.019,
                      child: Image.asset(
                        "assets/images/v5.png",
                        // fit: BoxFit.contain,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height * 0.145,
                      bottom: MediaQuery.of(context).size.height * 0.069,
                      child: Image.asset(
                        "assets/images/v3.png",
                        // fit: BoxFit.contain,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "What you need to know about?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.lato().fontFamily,
                              color: Color(0xFFFFEE02)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          "CORONA VIRUS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.lato().fontFamily,
                              color: Colors.yellow),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          "(COVID-19)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.lato().fontFamily,
                              color: Colors.yellow),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Info()));
                              },
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(200, 50),
                                  primary: Color(0xFFEE5236),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)))),
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
