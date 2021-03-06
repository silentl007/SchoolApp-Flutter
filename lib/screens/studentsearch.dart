import 'package:SchoolApp/screens/searchresult.dart';
import 'package:flutter/material.dart';

class StudentSearch extends StatefulWidget {
  @override
  _StudentSearchState createState() => _StudentSearchState();
}

class _StudentSearchState extends State<StudentSearch> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding10 = size.height * 0.01252;
    double hori90 = size.height * 0.1126;
    double font20 = size.height * 0.02503;
    final textfieldstring = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 30, 67, 1),
      appBar: AppBar(
        title: Text(
          'Students Search',
          style: TextStyle(fontSize: font20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(8, 30, 67, 1),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Insert StudentID',
                style: TextStyle(color: Colors.white),
              ),
              Container(
                padding: EdgeInsets.all(padding10),
                margin: EdgeInsets.symmetric(horizontal: hori90),
                child: TextField(
                  textInputAction: TextInputAction.newline,
                  style: TextStyle(color: Colors.white),
                  autofocus: true,
                  controller: textfieldstring,
                  decoration: InputDecoration(
                      fillColor: Colors.red,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 0))),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Result(search: textfieldstring.text,)));
                },
                child: Text('Go'),
              ),
            ]),
      ),
    );
  }
}
