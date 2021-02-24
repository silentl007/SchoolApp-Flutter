import 'package:flutter/material.dart';

class Latest extends StatefulWidget {
  @override
  _LatestState createState() => _LatestState();
}

class _LatestState extends State<Latest> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height10 = size.height * 0.1252;
    double font20 = size.height * 0.02503;
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 30, 67, 1),
      appBar: AppBar(
        title: Text(
          'Latest News',
          style: TextStyle(fontSize: font20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(8, 30, 67, 1),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: height10,
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
