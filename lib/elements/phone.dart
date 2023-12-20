import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class calling extends StatelessWidget {
  const calling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Phone Number Example'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            launch("tel://21213123123");
             // Text("Call me")
          },
          child: Text("+7 926 123-45-67", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}