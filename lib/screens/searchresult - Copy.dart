import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:loading_animations/loading_animations.dart';

class Result extends StatefulWidget {
  final String search;
  Result({this.search});
  @override
  _ResultState createState() => _ResultState(search);
}

class _ResultState extends State<Result> {
  final String search;
  final List array = [
    'Jss1',
    [
      {
        '1st Term': ['English 30']
      },
      {
        '2nd Term': ['Maths 50']
      }
    ]
  ];
  final Map key = {
    'hey': ['wassup']
  };
  // final List array = ['hello'];
  _ResultState(this.search);
  List<ParsedData> feeddata = [];
  Future<List> _datafunction() async {
    try {
      var feed =
          await http.get('https://deployment-fmb.herokuapp.com/school/$search');
      var jsonData = jsonDecode(feed.body);
      if (jsonData != null) {
        for (var info in jsonData) {
          ParsedData parsed = ParsedData(
              name: info['name'],
              age: info['age'],
              gender: info['gender'],
              inclination: info['inclination'],
              result: info['result']);
          feeddata.add(parsed);
        }
      }
      return feeddata;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(8, 30, 67, 1),
        appBar: AppBar(
          title: Text(
            'Search Result',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(8, 30, 67, 1),
          centerTitle: true,
        ),
        // body: Column(children: <Widget>[
        //   Container(),
        body: Container(
          child: FutureBuilder(
            future: _datafunction(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData == false) {
                return Center(
                  child: LoadingBouncingGrid.circle(),
                );
              } else if (snapshot.data[0] == 'failed') {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Unable To Connect',
                        style: TextStyle(color: Colors.white),
                      ),
                      RaisedButton(
                        onPressed: null,
                        child: Text('Retry'),
                      )
                    ],
                  ),
                );
              }
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    print('---------------------');
                    print(snapshot.data[index].result);
                    print(snapshot.data.length);
                    print('---------------------');
                    // return Card(
                    //     child: ListTile(
                    //   title: Text(snapshot.data[index].name),
                    // ));
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ${snapshot.data[index].name}',
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Age: ${snapshot.data[index].age}',
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Gender: ${snapshot.data[index].gender}',
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Discipline: ${snapshot.data[index].inclination}',
                            textAlign: TextAlign.left,
                          ),
                          ExpansionTile(
                            expandedCrossAxisAlignment: CrossAxisAlignment.start,
                            title: Text('Results'),
                            children: array.map<Widget>((data) {
                              if (data.runtimeType == String) {
                                return Column(
                                  children: [
                                    Text(data),
                                    Text('---------'),
                                    Text('First Term'),
                                    Text('---------'),
                                  ],
                                );
                              }
                              return Column(
                                children: data.map<Widget>((keys) {
                                  print(keys);
                                  if (keys.containsKey('1st Term')) {
                                    return Text(keys['1st Term'][0]);
                                  }
                                  else if (keys.containsKey('2nd Term')){
                                    return Text(keys['2nd Term'][0], textAlign: TextAlign.start);
                                  }
                                }).toList(),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
        ));
    // ]));
  }
}

class ParsedData {
  String name;
  String age;
  String gender;
  String inclination;
  List result;
  ParsedData({this.age, this.gender, this.inclination, this.name, this.result});
}
