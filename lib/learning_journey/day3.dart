import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  var _selectedColor = const Color(0xff0040e7);
  var _selectedTextColor = const Color(0xffffffff);
  var greenColor = const Color(0xff09814A);
  var pinkColor = const Color(0xffEE4266);
  var yellowColor = const Color(0xffFFD23F);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedColor = greenColor;
                _selectedTextColor = Colors.white;
              });
            },
            child: const Text("Green")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedColor = yellowColor;
                _selectedTextColor = Colors.black;
              });
            },
            child: const Text("Yellow")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedColor = pinkColor;
                _selectedTextColor = Colors.white;
              });
            },
            child: const Text("Pink"))
      ],
    );
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('home-screen'),
      ),
      body: AnimatedContainer(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        curve: const Cubic(.83, 0, .17, 1),
        color: _selectedColor,
        duration: const Duration(milliseconds: 1000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 1000),
              curve: const Cubic(0.83, 0, 0.17, 1),
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 40,
                      color: _selectedTextColor,
                      fontWeight: FontWeight.w600)),
              child: const Text('What colors improve your mood?'),
            ),
            row
          ],
        ),
      ),
    );
  }
}
