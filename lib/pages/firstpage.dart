import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/animation.dart';
import 'package:sneakertowndemo/pages/catalogpage/HomePage.dart';
import 'dart:math';
import 'dart:async';
class FirstLook extends StatefulWidget {
  const FirstLook({super.key});


  @override
  State<FirstLook> createState() => _FirstLookState();
}



class _FirstLookState extends State<FirstLook> {
  double _angle = 0;

  void _rotating(){
    setState(() {
      _angle = _angle*(pi/40);
    });

  }

  @override
  void initState() {
    super.initState();
    // Rotate the image every 16 milliseconds (approximately 60 frames per second)
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        _angle += 2; // Adjust the speed by changing the increment value
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      ListView(
        physics: NeverScrollableScrollPhysics(),
        children:[ Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 190, horizontal: 40),
            child: Column(
              children: [
              // Image.network('img/stepping.jpg'),
                Stack(
                    children:[
            Transform.rotate(
                angle: _angle * (pi / 40), // Convert degrees to radians
      child: Image.asset('img/whiteback.jpeg', height: 400, width: 350,), // Replace with your image
    ),

            Positioned(
    child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 10),
        child: GestureDetector(
          onTap: _rotating,
            child: Image.asset('img/stepping.jpg',)),
    ),

            // top: 40,
            //   left: 50,
            )
              ]),

                   Text("Great way to lift up to your style!", style: TextStyle(
                    fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold
                  ),
                     textAlign: TextAlign.center,
                ),
                Text("Complete your style with awesome shoes and sneakers from us",style: TextStyle(
                  color: Colors.white, fontSize: 15
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 50,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Get Started", style: TextStyle(
                        color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    ],
      ),


    );
  }
}
