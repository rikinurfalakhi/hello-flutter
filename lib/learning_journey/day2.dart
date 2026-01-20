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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Flutter Demo Click Counter'),
      ),
      body: Column(children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        ),
        Text('Riki Nurfalakhi'),
        Text('@rikinurfalakhi'),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.orange,
              height: 100,
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text('Post'), Text('364')],
              )),
            )),
            Expanded(
              child: Container(
                  color: Colors.orange,
                  height: 100,
                  child: Center(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [Text('Followers'), Text('2742')]),
                  )),
            )
          ],
        ),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(12),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text('Bio'),
            Text(
                'Transforming challenges into opportunities with strategic thinking and a proactive approach for sustained success.')
          ]),
        ),
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () => mounted,
                child: Text('Follow'),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: FilledButton(
                onPressed: () => mounted,
                child: Text('Message'),
              ),
            )
          ],
        ),
      ]),
      backgroundColor: Colors.white,
    );
  }
}
