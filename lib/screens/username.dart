import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserName extends StatefulWidget {
  @override
  _UserNameState createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Widget nexti() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 20, left: 20),
              child: Text(
                'aereor',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Poppins', color: Colors.black),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: Text(
            'tell us your nickname',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
        ),
        Image.network('https://i.imgur.com/qSxz5sq.jpg'),
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: TextField(
            controller: myController,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.black54),
              alignLabelWithHint: true,
              labelText: 'nickname',
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFFFFFFFF),
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
            ),
            onEditingComplete: () {},
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Colors.green[300],
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Let\'s get ecofriendly!',
              style: TextStyle(fontSize: 15),
            ),
          ),
          splashColor: Colors.greenAccent[500],
          hoverElevation: 8,
        )
      ]),
    );
  }
}
