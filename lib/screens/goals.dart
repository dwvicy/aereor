import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Goals extends StatefulWidget {
  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(15),
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, f) {
                  int day = DateTime.now().day + f;
                  return FittedBox(
                    child: Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.only(right: 15.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: day == DateTime.now().day
                            ? Colors.cyan[400]
                            : Colors.amber[400],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${DateTime.now().day + f}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: day == DateTime.now().day
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: day == DateTime.now().day
                                    ? Colors.black
                                    : Colors.black54,
                              ),
                            ),
                            Text(
                              DateFormat('EE').format(
                                DateTime.now().add(
                                  Duration(days: f),
                                ),
                              ),
                              style: TextStyle(
                                  color: day == DateTime.now().day
                                      ? Colors.black
                                      : Colors.black54,
                                  fontWeight: day == DateTime.now().day
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
