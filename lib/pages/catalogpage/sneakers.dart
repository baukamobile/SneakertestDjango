import 'package:flutter/material.dart';
import 'package:sneakertowndemo/main.dart';
import 'package:sneakertowndemo/pages/catalog.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';
import '../../elements/search.dart';
class sneaker extends StatelessWidget {
  const sneaker({super.key});

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
                          child: Text("Kроссовки", style: TextStyle(fontSize: 20),),
                        ),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                      },
                      child: Row(
                        children: [
                          Image.asset("img/adidas1.jpeg", height: 80, width: 100,),
                          Text("Adidas",
                            style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                      },
                      child: Row(
                        children: [
                          Image.asset("img/nike1.png", height: 80, width: 100,),
                          Text("Nike",
                            style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                      },
                      child: Row(
                        children: [
                          Image.asset("img/nb2.jpg", height: 80, width: 100,),
                          Text("New Balance",
                            style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                      },
                      child: Row(
                        children: [
                          Image.asset("img/balenciaga1.jpg", height: 80, width: 100,),
                          Text("Balenciaga",
                            style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                      },
                      child: Row(
                        children: [
                          Image.asset("img/asics1.jpg", height: 80, width: 100,),
                          Text("Asica",
                            style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                      },
                      child: Row(
                        children: [
                          Image.asset("img/puma1.png", height: 80, width: 100,),
                          Text("Puma",
                            style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
                      },
                      child: Row(
                        children: [
                          Image.asset("img/airjordan1.jpg", height: 80, width: 100,),
                          Text("Air Jordan",
                            style: TextStyle(fontSize: 20),)
                        ],
                      ),
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
