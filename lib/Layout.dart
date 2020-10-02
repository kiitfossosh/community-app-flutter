import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'HomePage.dart';
import 'joinus.dart';
import 'developers.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 1;
  var _title = "HOME ";
  var icn = Icons.home;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (_currentIndex == 0) {
      setState(() {
        _title = "DEVELOPERS ";
        icn = Icons.people;
      });
    }
    if (_currentIndex == 1) {
      setState(() {
        _title = "HOME ";
        icn = Icons.home;
      });
    } else if (_currentIndex == 2) {
      setState(() {
        _title = "JOIN US ";
        icn = Icons.assignment;
      });
    }
  }

  final List<Widget> _children = [Developers(), HomePage(), Joinus()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff004A69),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _title,
              style: TextStyle(fontSize: 25),
            ),
            Icon(
              icn,
              size: 35,
            )
          ],
        ),
      ),
      body: _children[_currentIndex],
      drawer: Drawerbar(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff004A69),
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 35,
            ),
            title: Text(
              'Developers',
              style: TextStyle(fontSize: 20),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              size: 35,
            ),
            title: Text(
              'Join Us',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Drawerbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
                width: 114,
                height: 115,
                child: Center(child: Image.asset("assets/Logo.jpg"))),
            decoration: BoxDecoration(color: Colors.white),
          ),
          Divider(
            color: Colors.black,
            height: 1,
          ),
          ListTile(
              title: Text(
            "Home",
            style: TextStyle(fontSize: 17),
          )),
          ListTile(
              title: Text(
            "Open Source",
            style: TextStyle(fontSize: 17),
          )),
          ListTile(
            title: Text(
              "Projects",
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
              title: Text(
            "Publications",
            style: TextStyle(fontSize: 17),
          )),
          ListTile(
              title: Text(
            "Login",
            style: TextStyle(fontSize: 17),
          ))
        ],
      ),
    );
  }
}
