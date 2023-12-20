import 'package:flutter/material.dart';
import 'package:sneakertowndemo/main.dart';
import 'package:sneakertowndemo/pages/favourites.dart';
import '../elements/search.dart';
import 'catalog.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';
class compare extends StatelessWidget {
  const compare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text("Compare"),
          ),
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
