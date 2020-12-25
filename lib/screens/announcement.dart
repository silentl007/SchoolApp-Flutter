import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 30, 67, 1),
      appBar: AppBar(
        title: Text(
          'Announcement',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(8, 30, 67, 1),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/banners/Banner_Announcement.png'),
                    fit: BoxFit.cover)),
          ),
        ]),
    );
  }
}
