import 'package:SchoolApp/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(8, 30, 67, 1),
          appBar: AppBar(
            title: Text(
              'Home - Dashboard',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color.fromRGBO(8, 30, 67, 1),
            centerTitle: true,
          ),
          drawer: AppDrawer(),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/latest');
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/welcomedash/Button_Latest_News.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/announce');
                            },
                            child: Container(
                              height: 150,
                              child: Stack(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                        'assets/welcomedash/Button_Announcement.png'),
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/timetable');
                            },
                            child: Container(
                              height: 150,
                              child: Stack(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                        'assets/welcomedash/Button_Recent_Event.png'),
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/social');
                            },
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/welcomedash/Button_Social_Media.png'),
                                      fit: BoxFit.cover)),
                                      child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              ],
                            ),
                          ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/result');
                            },
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/welcomedash/Button_Admission.png'),
                                      fit: BoxFit.cover)),
                             
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}