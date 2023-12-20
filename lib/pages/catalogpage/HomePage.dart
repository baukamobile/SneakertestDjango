import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/elements/googlemap.dart';
import '../../bestrecomendation.dart';
import '../../elements/elements.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
class HomePage extends StatefulWidget {
  HomePage({super.key});
  static const LatLng _center = const LatLng(43.2380, 76.8829);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        body:
         ListView(
          children:[ Column(
            children: [
        CarouselSlider(
        options: CarouselOptions(
          height: 350, // Высота карусели
          autoPlay: true, // Автоматически воспроизводить карусель
          enlargeCenterPage: true, // Увеличивать центральное изображение
          viewportFraction: 0.8,
          // Размер видимой части изображения
        ),
        items: [
          'img/board.jpg',
          'img/run1.jpeg', // Путь ко второму изображению
          'img/run2.jpeg', // Путь к третьему изображению
        ].map((item) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),

      // child: Image.asset('img/nb2.jpg')
      // ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => recomndation()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Лучшие предложения", style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold,
                      ),),
                      Icon(Icons.arrow_forward_ios),

                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Text("Новинки", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15,
                      decoration: TextDecoration.underline,
                      ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Акции", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Скидки", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              // BrandLogo(),
                SizedBox(height: 20,),


                elements(),
                elements(),
                CustomGoogleMap(),


                // MapScreen(),
            ],
          ),
      ],
        ),

      bottomNavigationBar: bottombar()
    );
  }
}
