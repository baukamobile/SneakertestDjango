import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/elements/elements.dart';
import 'package:sneakertowndemo/elements/search.dart';
import 'package:sneakertowndemo/pages/compare.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';
import 'package:sneakertowndemo/pages/favourites.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../main.dart';
import '../pages/catalog.dart';

class aboutsneaker extends StatefulWidget {
   aboutsneaker({super.key});

  @override
  State<aboutsneaker> createState() => _aboutsneakerState();
}

class _aboutsneakerState extends State<aboutsneaker> {
   late var _count = 0;
   final heart = Icon(Icons.favorite);

   final _increment = 1;

   final _dicrement = -1;
    // = [41,42,43,44,45];
    List size = [41,42,43,44,45];
    
   void setstate(){
     _count+=1;
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
              child: Text("Кроссовки Hoka One Black S30000-02", style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: CarouselSlider(
                  options: CarouselOptions(
                    // height: 200, // Высота карусели
                    autoPlay: true, // Автоматически воспроизводить карусель
                    enlargeCenterPage: true, // Увеличивать центральное изображение
                    viewportFraction: 0.8,
                  ),
                  items: [
                    Image.asset('img/nb2.jpg'),
                    Image.asset('img/nb3.jpg'),
                    Image.asset('img/nb5.jpg')
                  ],
                  // child: Image.asset('img/nb2.jpg')
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          heart;


                        });
                      },
                        child: Icon(Icons.favorite_border_outlined)),
                    SizedBox(width: 15,),
                    Icon(Icons.compare_arrows)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star_outline),
                    Icon(Icons.star_outline),
                    Icon(Icons.star_outline),
                    Icon(Icons.star_outline),
                    Icon(Icons.star_outline),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("26900Тг/пар", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30
                  ),),

                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("• Есть в наличии: 10", style: TextStyle(color: Colors.green)),
                ),
                Text("Размеры", style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 10,),
                // Row(
                //   children: [
                //     // size.indexOf(size)
                //   ],
                // )
                Text("41,42,43,44", ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _count--;
                                });
                              },
                              child: Icon(Icons.exposure_minus_1)),
                        ),
                        Container(
                          child: Text(
                              '$_count', style: TextStyle(

                          ),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                              onTap: (){
                                setState((){
                                  _count++;
                                });

                              },
                              child: Icon(Icons.plus_one)),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("В корзину", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black
                      ),
                    )

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Популярные", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30
                  ),),

                ),
elements(),
              ],
            )
          ],
        ),
    ]
      ),
      bottomNavigationBar: bottombar()
    );
  }
}
