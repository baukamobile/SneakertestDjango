import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 41,
                    width: 71,
                    color: Color.fromRGBO(242, 242, 242, 3),
                    child: Image.asset('img/nikelogo.png', height: 35, width: 70,)),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 41,
                    width: 71,
                    color: Color.fromRGBO(242, 242, 242, 3),
                    child: Image.asset('img/adidaslogo.png', height: 35, width: 70,)),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 41,
                    width: 71,
                    color: Color.fromRGBO(242, 242, 242, 3),
                    child: Image.asset('img/asicslogo.png', height: 35, width: 70,)),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 41,
                    width: 71,
                    color: Color.fromRGBO(242, 242, 242, 3),
                    child: Image.asset('img/airjordanlogo.png', height: 35, width: 70,)),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 41,
                    width: 71,
                    color: Color.fromRGBO(242, 242, 242, 3),
                    child: Image.asset('img/LiNinglogo.png', height: 35, width: 70,)),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 41,
                    width: 71,
                    color: Color.fromRGBO(242, 242, 242, 3),
                    child: Image.asset('img/reeboklogo.png', height: 35, width: 70,)),
              ),

                ],
              ),
    )
        //
          ],
        );
  }
}
