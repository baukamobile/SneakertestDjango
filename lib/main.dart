import 'package:flutter/material.dart';
import 'hiddendrawer.dart';

void main() {
  runApp(const MaterialApp(
    home: const Home(),
  ));
}

class Home extends StatefulWidget {

  const Home({super.key,});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body:
      HiddenDrawer()
      // FirstLook()
      // AnimationImage()
    );
  }
}

