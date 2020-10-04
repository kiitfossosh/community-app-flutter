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
  var icn = AssetImage("assets/icons/home solid tb.png");
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (_currentIndex == 0) {
      setState(() {
        _title = "DEVELOPERS ";
        icn = AssetImage("assets/icons/people solid tb.png");
      });
    }
    if (_currentIndex == 1) {
      setState(() {
        _title = "HOME ";
        icn = AssetImage("assets/icons/home solid tb.png");
      });
    } else if (_currentIndex == 2) {
      setState(() {
        _title = "JOIN US ";
        icn = AssetImage("assets/icons/join solid tb.png");
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
            ImageIcon(
              icn,
              size: 30,
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
            icon: ImageIcon(AssetImage("assets/icons/people blank tb.png")),
            activeIcon: Icon(Icons.people),
            title: Text(
              'Developers',
              style: TextStyle(fontSize: 20),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/home blank tb.png")),
            activeIcon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/join blank tb.png")),
            activeIcon: ImageIcon(AssetImage("assets/icons/join solid tb.png")),
            title: Text(
              'Join Us',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        unselectedIconTheme: IconThemeData(size: 35),
        selectedIconTheme: IconThemeData(
          size: 45,
        ),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
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
            ),
            onTap: () {
              HomePage();
            },
          ),
          ListTile(
            title: Text(
              "Open Source",
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Projects",
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Publications",
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Login",
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
