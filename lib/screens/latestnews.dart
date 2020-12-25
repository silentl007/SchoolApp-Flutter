import 'package:flutter/material.dart';

class Latest extends StatefulWidget {
  @override
  _LatestState createState() => _LatestState();
}

class _LatestState extends State<Latest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 30, 67, 1),
      appBar: AppBar(
        title: Text(
          'Latest News',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(8, 30, 67, 1),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/banners/Banner_Latest_News.png'),
                      fit: BoxFit.cover)),
            ),
            Center(child: Text('Coming Soon'),)
          ]),
      ),
    );
  }
}
