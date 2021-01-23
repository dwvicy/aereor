import 'package:aereor/nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aereor());
}

class Aereor extends StatefulWidget {
  @override
  _AereorState createState() => _AereorState();
}

class _AereorState extends State<Aereor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.green[400],
          accentColor: Colors.greenAccent[900],

          // Define the default font family.
          fontFamily: 'Poppins',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 72.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
            headline6: TextStyle(
                fontSize: 36.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Poppins'),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedLabelStyle:
                  TextStyle(color: Colors.black54, fontFamily: 'Poppins'),
              unselectedLabelStyle:
                  TextStyle(color: Colors.green[400], fontFamily: 'Poppins'),
              backgroundColor: Colors.white,
              selectedIconTheme:
                  IconThemeData(color: Colors.black54, size: 30)),
          iconTheme: IconThemeData(color: Colors.black54)),
    );
  }
}
