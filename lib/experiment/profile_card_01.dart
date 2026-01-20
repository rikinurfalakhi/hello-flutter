import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _myNumber = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    setState(() {
      _myNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Profile Card'),
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('ozan.card',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Container(
                  width: 100,
                  height: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff667D75)),
                  child: Text('Sign Up Free',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Transform.translate(
                    offset: Offset(0, -50),
                    child: Image.network(
                        'https://i.pinimg.com/736x/34/c7/c2/34c7c2a3c5ae3577b40c18202c168560.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: 160,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Color(0xffEBEBE3)),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cindy Crawford',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          Text('Manager, Product Management at CBRE Hamburg',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Text('CBRE',
                              style: TextStyle(
                                  color: Color(0xff09755f),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30))
                        ],
                      )),
                )
              ]),
            )
          ]),
        )),
        Container(
          alignment: Alignment.center,
          color: Colors.white,
          height: 80,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Center(
                  child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1)),
                alignment: Alignment.center,
                child: Text('SAVE CONTACT'),
              )),
            ),
            Expanded(
                child: Center(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Color(0xff0e4b3f),
                alignment: Alignment.center,
                width: 150,
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                        'EXCHANGE CONTACT',
                        softWrap: true,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                      )
                    ]),
              ),
            ))
          ]),
        )
      ]),
      backgroundColor: const Color(0xff0e4b3f),
    );
  }
}
