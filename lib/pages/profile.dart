import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/home.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ));
            },
            child: Text('To Homee Page')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back')),
        Text('This is Profile Page')
      ]),
    );
  }
}
