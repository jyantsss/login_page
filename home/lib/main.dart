import 'package:flutter/material.dart';
import 'homecreen.dart';
import 'SignUp.dart';
import 'loginScreen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.brown,
      ),
      home: const home_Screen(),
    );
  }
}
