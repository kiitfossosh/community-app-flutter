import 'package:flutter/material.dart';

class Joinus extends StatefulWidget {
  @override
  _JoinusState createState() => _JoinusState();
}

class _JoinusState extends State<Joinus> {
  var email, name, roll, branch;
  bool aiml = false;
  bool embedsys = false;
  bool webdev = false;
  bool appdev = false;
  bool uiux = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Divider(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: Text(
            "KIIT FOSS/OSH REGISTRATION",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          child: Text(
            "Based on your interest you will be added to dedicated sub communities. So your authentic submission is expected.",
            style: TextStyle(fontSize: 15, color: Color(0xff004A69)),
            textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.all(10),
        ),
        Container(
            padding: EdgeInsets.only(left: 20, bottom: 15, right: 20, top: 5),
            child: TextField(
                onChanged: (value) {
                  email = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide:
                          BorderSide(color: Color(0xff004A69), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide:
                          BorderSide(color: Color(0xff004A69), width: 3),
                    ),
                    hintText: "Enter your Email ID",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "  Your Email ID",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xff004A69),
                    )))),
        Container(
            padding: EdgeInsets.only(left: 20, bottom: 15, right: 20, top: 5),
            child: TextField(
                onChanged: (value) {
                  name = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Color(0xff004A69), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Color(0xff004A69), width: 3),
                  ),
                  hintText: "Enter your Name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "  Your Name",
                  labelStyle: TextStyle(fontSize: 20, color: Color(0xff004A69)),
                ))),
        Container(
            padding: EdgeInsets.only(left: 20, bottom: 15, right: 20, top: 5),
            child: TextField(
                onChanged: (value) {
                  roll = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide:
                          BorderSide(color: Color(0xff004A69), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide:
                          BorderSide(color: Color(0xff004A69), width: 3),
                    ),
                    labelText: "  KIIT Roll No.",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Enter your KIIT Roll No.",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xff004A69),
                    )))),
        Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: TextField(
                onChanged: (value) {
                  branch = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Color(0xff004A69), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Color(0xff004A69), width: 3),
                  ),
                  hintText: "Enter your Branch",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "  Branch",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Color(0xff004A69),
                  ),
                  //alignLabelWithHint: true
                ))),
        Divider(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Text("Point of Interest/Work (Multiple Choice Questions)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              )),
        ),
        Container(
            padding: EdgeInsets.all(15),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 1.0,
              primary: true,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CheckboxListTile(
                  title: const Text(
                    'AI/ML',
                    style: TextStyle(fontSize: 15, color: Color(0xff004A69)),
                  ),
                  activeColor: Color(0xff004A69),
                  value: this.aiml,
                  onChanged: (bool value) {
                    setState(() {
                      this.aiml = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'Embedded Systems',
                    style: TextStyle(fontSize: 15, color: Color(0xff004A69)),
                  ),
                  activeColor: Color(0xff004A69),
                  value: this.embedsys,
                  onChanged: (bool value) {
                    setState(() {
                      this.embedsys = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'Web Development',
                    style: TextStyle(fontSize: 15, color: Color(0xff004A69)),
                  ),
                  activeColor: Color(0xff004A69),
                  value: this.webdev,
                  onChanged: (bool value) {
                    setState(() {
                      this.webdev = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'App Development',
                    style: TextStyle(fontSize: 15, color: Color(0xff004A69)),
                  ),
                  activeColor: Color(0xff004A69),
                  value: this.appdev,
                  onChanged: (bool value) {
                    setState(() {
                      this.appdev = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'UI/UX',
                    style: TextStyle(fontSize: 15, color: Color(0xff004A69)),
                  ),
                  activeColor: Color(0xff004A69),
                  value: this.uiux,
                  onChanged: (bool value) {
                    setState(() {
                      this.uiux = value;
                    });
                  },
                ),
              ],
            )),
        Container(
          child: Center(
            child: FlatButton(
              onPressed: () {},
              color: Color(0xff004A69),
              child: Text(
                "Join US",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 11),
            ),
          ),
        ),
        Divider(
          height: 25,
        )
      ],
    );
  }
}
