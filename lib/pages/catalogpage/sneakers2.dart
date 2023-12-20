import 'package:flutter/material.dart';
import 'package:sneakertowndemo/main.dart';
import 'package:sneakertowndemo/pages/catalog.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';

import '../../elements/search.dart';
class sneakers2 extends StatelessWidget {
  const sneakers2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("Назад", style: TextStyle(fontSize: 24, color: Colors.black),),

                      ],
                    ),

                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text("Кеды", style: TextStyle(fontSize: 20),),
                  ),

                  Row(
                    children: [
                      Image.asset("img/converse.jpg", height: 80, width: 100,),
                      Text("Converse",
                        style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Row(
                    children: [
                      Image.network("img/vans1.png", height: 80, width: 100,),
                      Text("Vans", style: TextStyle(fontSize: 20),)
                    ],
                  ),

                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
