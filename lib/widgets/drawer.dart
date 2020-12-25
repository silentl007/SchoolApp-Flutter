import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(8, 30, 67, 1),
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
              child: Text('School Logo', style: TextStyle(color: Colors.white)),
            )),
            ListTile(
              title: Text(
                'About Us',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_right,
                color: Colors.white,
              ),
              leading: Image.asset('assets/welcomedash/aboutUs.png'),
            ),
            ListTile(
              title: Text('Staff', style: TextStyle(color: Colors.white),),
              trailing: Icon(
                Icons.arrow_right,
                color: Colors.white,
              ),
              leading: Image.asset('assets/welcomedash/aboutUs.png'),
            )
          ],
        ),
      ),
    );
  }
}
