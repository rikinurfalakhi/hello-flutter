import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfilePage()));
            },
            child: Text('To Profile Page')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back to Login?')),
        Text('This is Home Page')
      ]),
    );
  }
}
