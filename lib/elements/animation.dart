import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
void main() {
  runApp(AnimationImage()); // Change the app name here
}

class AnimationImage extends StatefulWidget {
  @override
State<AnimationImage> createState() => _AnimationImageState();
}

class _AnimationImageState extends State<AnimationImage> {
  // Change the class name here
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimationImage'), // Update the app title here
        ),
        body: Center(
          child: RotationImage(),
        ),
      ),
    );
  }
}

class RotationImage extends StatefulWidget {
  @override
  _RotationImageState createState() => _RotationImageState();
}

class _RotationImageState extends State<RotationImage> {
  double _angle = 0;

  @override
  void initState() {
    super.initState();
    // Rotate the image every 16 milliseconds (approximately 60 frames per second)
    Timer.periodic(Duration(milliseconds: 160), (timer) {
      setState(() {
        _angle += 2; // Adjust the speed by changing the increment value
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _angle * (pi / 40), // Convert degrees to radians
      child: Container(
        color: Colors.grey,
        child: Padding(

          padding: const EdgeInsets.all(8.0),
          child: Image.network('img/white4.png', height: 200, width: 200,),
        ),
      ), // Replace with your image
    );
  }
}
