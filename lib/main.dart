import 'package:SchoolApp/screens/announcement.dart';
import 'package:SchoolApp/screens/latestnews.dart';
import 'package:SchoolApp/screens/socialmedia.dart';
import 'package:SchoolApp/screens/studentsearch.dart';
import 'package:SchoolApp/screens/timetable.dart';
import 'package:flutter/material.dart';
import 'package:SchoolApp/homedash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeBody(),
      routes: {
        '/latest': (context) => Latest(),
        '/announce': (context) => Announcement(),
        '/timetable': (context) => Timetable(),
        '/social': (context) => SocialMedia(),
        '/result': (context) => StudentSearch(),
      },
    );
  }
}
