import 'package:aereor/Home.dart';
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
      home: HomePage(),
    );
  }
}
