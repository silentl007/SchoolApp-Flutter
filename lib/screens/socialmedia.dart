import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 30, 67, 1),
      appBar: AppBar(
        title: Text(
          'Social Media',
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
