import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height10 = size.height * 0.1252;
    double font20 = size.height * 0.02503;
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 30, 67, 1),
      appBar: AppBar(
        title: Text(
          'Social Media',
          style: TextStyle(fontSize: font20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(8, 30, 67, 1),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: height10,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/banners/Banner_Social_Media.png'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text(
              'Facebook',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              'Twitter',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
