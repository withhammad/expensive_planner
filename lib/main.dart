import 'package:expensive_planner/transcition.dart';
import 'package:flutter/material.dart';
import '/transcition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transction> transctions = [
    Transction(
      id: 't1',
      title: 'New Shoes ',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transction(
      id: 't1',
      title: 'weekly groceries ',
      amount: 1.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.blue,
            child: Container(
              width: double.infinity,
              child: Text('CHART!'),
            ),
            elevation: 21,
          ),
          Card(
            color: Colors.red,
            child: Text('LIST OF TX'),
          )
        ],
      ),
    );
  }
}
