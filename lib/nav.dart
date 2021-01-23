import 'package:aereor/screens/daily.dart';
import 'package:aereor/screens/goals.dart';
import 'package:aereor/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(
            LineIcons.home,
            color: Colors.black54,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
        icon: Icon(
          LineIcons.leaf,
          color: Colors.black54,
        ),
        label: 'Tracker',
      ),
      BottomNavigationBarItem(
          icon: Icon(
            LineIcons.user,
            color: Colors.black54,
          ),
          label: 'Profile')
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[Daily(), Goals(), Profile()],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                LineIcons.bell_o,
                size: 30,
                color: Colors.black54,
              ),
            )
          ],
          leading: Icon(
            Icons.menu_rounded,
            color: Colors.black54,
            size: 30,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'aereor',
            style: TextStyle(
                fontSize: 30, fontFamily: 'Poppins', color: Colors.black54),
          )),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyan,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 30),
        unselectedItemColor: Colors.black54,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
