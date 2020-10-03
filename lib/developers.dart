import 'package:flutter/material.dart';

class Developers extends StatefulWidget {
  @override
  _DevelopersState createState() => _DevelopersState();
}

class _DevelopersState extends State<Developers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            "ANDROID DEVELOPERS",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Divider(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 7.0,
            mainAxisSpacing: 7.0,
            primary: true,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              6,
              (index) {
                return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 25,
                              child: Text(
                                'AD',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Divider(
                              height: 10,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "Branch",
                              style: TextStyle(fontSize: 17),
                            )
                          ]),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        new BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 4.0,
                        ),
                      ], borderRadius: BorderRadius.all(Radius.circular(25))),
                    ));
              },
            ),
          ),
          Divider(
            height: 10,
          ),
          Text(
            "CORE MEMBERS",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Divider(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 7.0,
            mainAxisSpacing: 7.0,
            primary: true,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              6,
              (index) {
                return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 25,
                              child: Text(
                                'CM',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Divider(
                              height: 10,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "Branch",
                              style: TextStyle(fontSize: 17),
                            )
                          ]),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        new BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 4.0,
                        ),
                      ], borderRadius: BorderRadius.all(Radius.circular(25))),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
