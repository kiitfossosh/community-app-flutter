import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff004A69),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Text(
                "KIIT FOSS/OSH",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Text(
                "KIIT'S Open Source Software and Hardware Community",
                style: TextStyle(color: Colors.white, fontSize: 23),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Container(
                child: Image.asset("assets/images/Image1.png"),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ClipPath(
              clipper: WaveClipperTwo(reverse: true),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                color: Colors.white,
                child: Column(children: [
                  Text(
                    "What is Open Source Software ?",
                    style: TextStyle(
                        color: Color(0xff001044),
                        fontWeight: FontWeight.w900,
                        fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    height: 10,
                  ),
                  Text(
                    """
Open source software is software withsource code that anyone can inspect, modify, and enhance.

"Source code" is the part of software that most computer users don't ever see; it's the code computer programmers can manipulate to change how a piece of software—a "program" or "application"—works. Programmers who have access to a computer program's source code can improve that program by adding features to it or fixing parts that don't always work correctly.""",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    height: 7,
                  ),
                  Container(child: Image.asset("assets/images/Image2.png"))
                ])),
            ClipPath(
              clipper: WaveClipperTwo(reverse: false),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Text(
                "PROJECTS",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              height: 5,
            ),
            Container(
                padding: EdgeInsets.all(25),
                child: Column(children: [
                  Container(
                    height: 430,
                    child: Card(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                        child: Column(children: [
                          Divider(height: 30),
                          Image.asset("assets/images/app dev.png"),
                          Divider(
                            height: 70,
                          ),
                          FlatButton(
                            child: Text(
                              "Android Developement",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            color: Colors.black,
                            minWidth: 250,
                            onPressed: () {},
                          )
                        ]),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    decoration: BoxDecoration(boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 4.0,
                      ),
                    ], borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  Divider(
                    height: 35,
                  ),
                  Container(
                    height: 430,
                    child: Card(
                      color: Color(0xff7C005A),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                        child: Column(children: [
                          Divider(height: 40),
                          Image.asset("assets/images/Embedded.png"),
                          Divider(
                            height: 70,
                          ),
                          FlatButton(
                            child: Text(
                              "Embedded Systems",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            color: Colors.white,
                            minWidth: 250,
                            onPressed: () {},
                          )
                        ]),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    decoration: BoxDecoration(boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 4.0,
                      ),
                    ], borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  Divider(
                    height: 35,
                  ),
                  Container(
                    child: Card(
                      color: Color(0xff5CD63D),
                      child: Container(
                        padding: EdgeInsets.all(25),
                        child: Column(children: [
                          Divider(height: 10),
                          Image.asset("assets/images/web dev.png"),
                          Divider(
                            height: 40,
                          ),
                          FlatButton(
                            child: Text(
                              "Web Developement",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            color: Color(0xff002B74),
                            minWidth: 250,
                            onPressed: () {},
                          )
                        ]),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    decoration: BoxDecoration(boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 4.0,
                      ),
                    ], borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  Divider(
                    height: 35,
                  ),
                  Container(
                    child: Card(
                      color: Color(0xffFE3E4B),
                      child: Container(
                        padding: EdgeInsets.all(25),
                        child: Column(children: [
                          Divider(height: 10),
                          Image.asset("assets/images/Machine Learning.png"),
                          Divider(
                            height: 40,
                          ),
                          FlatButton(
                            child: Text(
                              "Machine Learning",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffF80000),
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            color: Color(0xffFFB300),
                            minWidth: 250,
                            onPressed: () {},
                          )
                        ]),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    decoration: BoxDecoration(boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 4.0,
                      ),
                    ], borderRadius: BorderRadius.all(Radius.circular(25))),
                  )
                ]))
          ],
        ));
  }
}
