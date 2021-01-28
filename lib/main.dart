import 'package:aereor/nav.dart';
import 'package:aereor/screens/splashscreen.dart';
import 'package:aereor/screens/username.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/user': (context) => UserName()
      },
      theme: ThemeData(
          // Define the default brightness and colors.

          primaryColor: Colors.green[400],
          accentColor: Colors.greenAccent[900],

          // Define the default font family.
          fontFamily: 'Poppins',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(
                color: Colors.black54,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins'),
            headline2: TextStyle(
                color: Colors.black54, fontSize: 20.0, fontFamily: 'Poppins'),
            headline6: TextStyle(
                color: Colors.black54,
                fontSize: 36.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Poppins'),
            bodyText2: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Poppins',
              color: Colors.black54,
            ),
          ),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black54, size: 30)),
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
