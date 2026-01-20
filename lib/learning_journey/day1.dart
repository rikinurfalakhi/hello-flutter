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
    String nama = 'Riki';
    const String KALIMAT_TETAP = 'ini kalimat tetap';
    const Text WIDGET_PERMANEN = Text('SATU',
        style: TextStyle(
            color: Colors.black, backgroundColor: Colors.greenAccent));
    const Text WIDGET_PERMANEN_KEDUA = Text('DUA',
        style: TextStyle(
            color: Colors.greenAccent, backgroundColor: Colors.orange));
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
        title: const Text('Flutter Demo Click Counter'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: Container(
                    height: 250,
                    color: Colors.orange,
                    child: Center(
                        child: Text('A',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30))),
                  )),
                  Expanded(
                    child: Container(
                      height: 250,
                      color: Colors.blue,
                      child: Center(
                          child: Text('B',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30))),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
              color: Colors.brown,
              height: 150,
              child: Center(
                child: Text('C',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      color: Colors.green,
                      alignment: Alignment.topRight,
                      child: Text('D',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30))),
                ),
                Expanded(
                    child: Container(
                        color: Colors.purple,
                        child: Center(
                          child: Text('E',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                        )))
              ],
            ),
          )
        ]),
      ),
      backgroundColor: Color(0xff464646),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
