import 'package:bulls_eye/about.dart';
import 'package:bulls_eye/about_author.dart';
import 'package:bulls_eye/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => BackdropWidget(child: Homepage()),
        'about': (context) => BackdropWidget(child: AboutPage()),
        'about_author': (context)=> BackdropWidget(child: AboutAuthorPage(),)
      },
    );
  }
}

class BackdropWidget extends StatelessWidget {
  final Widget child;

  BackdropWidget({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Background@2x.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
