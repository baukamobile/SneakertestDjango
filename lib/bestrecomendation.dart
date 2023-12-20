import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/elements/search.dart';
import 'main.dart';
import 'pages/catalog.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';

class recomndation extends StatelessWidget {
  const recomndation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('img/airjordan1.jpg', height: 150, width: 150,),
                        Text("Баскетбольные ", style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('img/asics1.jpg', height: 150, width: 150,),
                        Text("Kроссовки", style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ),

            Row(
              children: [
                Column(
                  children: [
                    Image.asset('img/converse1.png', height: 150, width: 150,),
                    Text("Кеды", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Image.asset('img/clothes.jpg', height: 150, width: 150,),
                    Text("Одежда", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400
                    ),)
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset('img/clothes.jpg', height: 150, width: 150,),
                    Text("Аксессуары", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Image.asset('img/nb5.jpg', height: 150, width: 150,),
                    Text("Зимняя обувь", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400
                    ),)
                  ],
                )
              ],
            )

        ],
      ),
          ),

        ],
      ),
      bottomNavigationBar: bottombar(),
    );
  }
}
