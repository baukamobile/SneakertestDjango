import 'package:flutter/material.dart';
import 'package:sneakertowndemo/pages/catalog.dart';
import 'package:sneakertowndemo/pages/catalogpage/sneakers.dart';
import 'package:sneakertowndemo/pages/catalogpage/sneakers2.dart';

import '../../elements/search.dart';
import '../../main.dart';
import '../basket.dart';
import '../compare.dart';
import '../favourites.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';

class childcatalog extends StatelessWidget {
  const childcatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Главная",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.home,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                          // Navigator.popAndPushNamed(context, "/Рome");


                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Каталог",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.category,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Акции",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.discount,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Бренды",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.menu),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Как купить",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.shop,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Контакты",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.contact_page,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Login",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.contact_page,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("Register",style: TextStyle(
                          fontSize: 25, color: Colors.black,
                        ),),
                        leading: Icon(Icons.contact_page,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));

                        },
                      ),
                    ),

                  ],
                ),
              )),

        ),
      ),
      body: ListView(
    children:[
    Column(
    children: [
      Center(
      child: Text("Каталог", style: TextStyle(fontSize: 30, color: Colors.black),),
    ),
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

    InkWell(

    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => sneaker()));
    },

      child: Row(

      children: [
      Image.asset("img/nb3.jpg", height: 80, width: 100,),
      Text("Kроссовки", style: TextStyle(fontSize: 20)),
      ],
      ),
    ),

      GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => sneakers2()));
        },
    child:Row(
    children: [
    Image.asset("img/converse.jpg", height: 80, width: 100,),

     Text("Кеды",
    style: TextStyle(fontSize: 20),),

    ],),
    ),
    Row(
    children: [
    Image.asset("img/clothes.jpg", height: 80, width: 100,),
    Text("Одежда", style: TextStyle(fontSize: 20),)
    ],
    ),
    ],
    ),

    ],
    ),
    ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [

          BottomNavigationBarItem(

            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Icon(Icons. home)),  label: 'Home',

            backgroundColor: Colors.grey, ),

          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
              },
              child: Icon(Icons.supervised_user_circle)), label: 'Кабинет', ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => basket()));
                  },
                  child: Icon(Icons.shopping_cart_outlined)), label: 'Корзина'),
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
