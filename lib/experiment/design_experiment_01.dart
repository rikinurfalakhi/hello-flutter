import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final String svgAsset;
  final Color bgColor;
  final VoidCallback onTap;

  FeatureCard(
      {super.key,
      required this.title,
      required this.description,
      required this.svgAsset,
      required this.bgColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
            decoration: BoxDecoration(
                color: bgColor, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffFFFFFF),
                    child: SvgPicture.asset(
                      svgAsset,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(description),
                ])));
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: const DecoratedBox(
                          decoration: const BoxDecoration(color: Colors.blue)),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.orange)),
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.green)),
                        )
                      ],
                    )
                  ]),
            ),
            Expanded(
                child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              physics: NeverScrollableScrollPhysics(),
              children: [
                FeatureCard(
                    title: "Scan",
                    description:
                        "Documents, Id Card, Measure, Count, Passport...",
                    svgAsset: "assets/images/scan-qr-code.svg",
                    bgColor: Colors.blue,
                    onTap: () => print("Scan Clicked")),
                SizedBox(
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color(0xffFFE37D),
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color(0xffBFDF89),
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color(0xffFFC86D),
                          borderRadius: BorderRadius.circular(20))),
                )
              ],
            )),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Color(0xffF9F5E8),
                      borderRadius: BorderRadius.circular(20))),
            )
          ]),
      backgroundColor: const Color(0xffF2F6FC),
    );
  }
}
