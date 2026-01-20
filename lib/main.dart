import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/login.dart';
import 'pages/home.dart';
import 'pages/profile.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Navigation';
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
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/homepage': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
