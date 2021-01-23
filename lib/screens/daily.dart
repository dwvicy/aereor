import 'package:aereor/constants/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

List<Widget> cards = [
  Container(
    decoration: BoxDecoration(
        color: Colors.red.shade300, borderRadius: BorderRadius.circular(10)),
  ),
  Container(
      decoration: BoxDecoration(
          color: Colors.red.shade300, borderRadius: BorderRadius.circular(10))),
  Container(
      decoration: BoxDecoration(
          color: Colors.red.shade300, borderRadius: BorderRadius.circular(10))),
];

class Daily extends StatefulWidget {
  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Explore'.toLowerCase(),
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: cards,
            )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'daily goals'.toLowerCase(),
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(LineIcons.leaf),
                          onPressed: () {},
                        ),
                      ),
                      contentPadding: EdgeInsets.all(2),
                      title: Text(
                        'Plant a tree',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      subtitle: Text('A tree a day keeps climate change away',
                          style: Theme.of(context).textTheme.headline2),
                      isThreeLine: true,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
