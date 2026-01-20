import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
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

class CustomCard extends StatelessWidget {
  final String title;
  final String description;

  CustomCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [Text(title), Text(description)]),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  Axis _direction = Axis.horizontal;
  String _text = "Vertical";

  void toggleDirections() {
    setState(() {
      _direction =
          _direction == Axis.horizontal ? Axis.vertical : Axis.horizontal;
      _text = _direction == Axis.horizontal ? "Vertical" : "Horizontal";
    });
  }

  String _registeredUsername = "riki";
  String _registeredPassword = "123";

  String _username = '';
  String _password = '';
  String _loginIndicator = 'loading';
  // final formKey = GlobalKey(<FormState>)();
  //
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView(
                scrollDirection: _direction,
                padding: EdgeInsets.symmetric(horizontal: 30),
                children: [
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.red)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.orange)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.brown)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.purple)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.pinkAccent)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration:
                            BoxDecoration(color: Colors.deepPurpleAccent)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.amber)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.pink)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.pink)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.pink)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.pink)),
                  ),
                ]),
          ),
          ElevatedButton(
              onPressed: () => toggleDirections(),
              child: Text(
                  _direction == Axis.horizontal ? "Vertical" : "Horizontal")),
          Text(_text),
          SizedBox(
            height: 200,
          ),
          Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
                onChanged: (value) {
                  _username = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Username wajib diisi";
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: "Username"),
              ),
              TextFormField(
                onChanged: (value) {
                  _password = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password wajib diisi";
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: "Password"),
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        if (_username == _registeredUsername &&
                            _password == _registeredPassword) {
                          _loginIndicator = 'Login Successfully';
                        } else {
                          _loginIndicator = "Wrong password or username";
                        }
                      } else {
                        setState(() {
                          _loginIndicator = "loading";
                        });
                      }
                      ;
                    });
                  }),
                  child: Text('Login'))
            ]),
          ),
          Text(_loginIndicator)
        ],
      )),
      backgroundColor: const Color(0xffF2F6FC),
    );
  }
}
