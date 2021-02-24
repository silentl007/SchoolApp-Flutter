import 'package:SchoolApp/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double font20 = size.height * 0.02503;
    double padding10 = size.height * 0.01252;
    double height20 = size.height * 0.2503;
    double height17 = size.height * 0.2128;
    double height15 = size.height * 0.1877;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(8, 30, 67, 1),
        appBar: AppBar(
          title: Text(
            'Home - Dashboard',
            style: TextStyle(fontSize: font20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(8, 30, 67, 1),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(padding10),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/latest');
                    },
                    child: Container(
                      height: height20,
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
                            height: height15,
                            child: Stack(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                      'assets/welcomedash/Button_Announcement.png'),
                                  height: height17,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: padding10,
                                  top: padding10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: padding10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/timetable');
                          },
                          child: Container(
                            height: height15,
                            child: Stack(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                      'assets/welcomedash/Button_Recent_Event.png'),
                                  height: height17,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: padding10,
                                  top: padding10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7)),
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
                            height: height17,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/welcomedash/Button_Social_Media.png'),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: padding10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/result');
                          },
                          child: Container(
                            height: height17,
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
