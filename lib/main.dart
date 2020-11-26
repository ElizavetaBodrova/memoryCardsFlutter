import 'package:flutter/material.dart';
import 'package:flutter_testic/Page.dart';
import 'package:flutter_testic/data/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MainScreen(),
        '/second': (BuildContext context) => Home(),
        '/forth': (BuildContext context) => Home(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Выберите поле:')),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              points = 0;
              area = 2;
              Navigator.pushNamed(context, '/second');
            },
            child: Container(
              height: 50,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                "2x2",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              points = 0;
              area = 4;
              Navigator.pushNamed(context, '/forth');
            },
            child: Container(
              height: 50,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                "4x4",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
