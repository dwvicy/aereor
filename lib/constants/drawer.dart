import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.yellow[200]),
            child: DrawerHeader(
                child: Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 8, right: 15, left: 15),
                  child: Text(
                    'aereor',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        color: Colors.black54),
                  ),
                ),
              ),
            )),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(LineIcons.tree),
              onPressed: () {},
            ),
            title: Text(
              'Sustainability',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(LineIcons.power_off),
              onPressed: () {},
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
