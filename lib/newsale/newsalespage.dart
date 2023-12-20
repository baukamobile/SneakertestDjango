import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/elements.dart';

import '../elements/phone.dart';
import '../elements/search.dart';
import '../main.dart';
import '../pages/catalog.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';
import '../pages/compare.dart';
import '../pages/favourites.dart';

class NewSalesPage extends StatelessWidget {
  const NewSalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          elements(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(

            icon: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Icon(Icons. home)),  label: 'Home',

            backgroundColor: Colors.black, ),

          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
              },
              child: Icon(Icons.supervised_user_circle)), label: 'Кабинет', ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, ), label: 'Корзина'),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => favourites()));
              },
              child: Icon(Icons.favorite_border_outlined)), label: 'Favourite'),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => compare()));
              },
              child: Icon(Icons.sort)), label: 'Сравнение'),
        ],
        // currentIndex: _selectedIndex,


      ),


    );
  }
}
