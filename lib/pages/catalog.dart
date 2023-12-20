import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import '../main.dart';
import 'package:sneakertowndemo/pages/catalogpage/sneakers.dart';
import 'package:sneakertowndemo/pages/catalogpage/sneakers2.dart';

import '../elements/search.dart';
import 'basket.dart';
import 'compare.dart';
import 'favourites.dart';
import 'catalogpage/catalogforchild.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';
class catalog extends StatefulWidget {
  const catalog({super.key});

  @override
  State<catalog> createState() => _catalogState();
}

class _catalogState extends State<catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: ListView(
      children:[
        Column(
        children: [
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           GestureDetector(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
               },
               child: Text("Женский", style: TextStyle(color: Colors.pink),)),
           GestureDetector(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => childcatalog()));
               },
               child: Text("Для детей",style: TextStyle(color: Colors.blue),)),
           GestureDetector(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
               },
               child: Text("Мужской",style: TextStyle(color: Colors.brown),)),
         ],
       ),
     ),


     Column(
    children: [
      GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => sneaker()));
          },
      child: Row(
    children: [
    Image.asset("img/nb3.jpg", height: 80, width: 100,),

         Text("Kроссовки", style: TextStyle(fontSize: 20),)
    ],),
    ),

    GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sneakers2()));
    },
    child: Row(
    children: [
    Image.asset("img/converse.jpg", height: 80, width: 100,),
      Text("Кеды",
       style: TextStyle(fontSize: 20),),

                  ],),),

    GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sneaker()));
    },
      child: Row(
                  children: [
                    Image.asset("img/bassketball.jpg", height: 80, width: 100,),
                    Text("Баскетбольные кроссовки", style: TextStyle(fontSize: 20),)
                  ],
                ),),
    GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sneaker()));
    },child:Row(
                  children: [
                    Image.asset("img/clothes.jpg", height: 80, width: 100,),
                    Text("Одежда", style: TextStyle(fontSize: 20),)
                  ],
                ),),
    GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sneaker()));
    },child:Row(
                  children: [
                    Image.asset("img/nb5.jpg", height: 80, width: 100,),
                    Text("Аксессуары", style: TextStyle(fontSize: 20),)
                  ],
                ),),
              ],
            ),

        ],
      ),
    ],
    ),
      bottomNavigationBar: bottombar()
    );
  }
}
