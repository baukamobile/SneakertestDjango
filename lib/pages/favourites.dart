import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/main.dart';
import 'package:sneakertowndemo/pages/basket.dart';
import 'package:sneakertowndemo/pages/catalogpage/HomePage.dart';
import 'package:sneakertowndemo/pages/compare.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';
import '../elements/search.dart';
import 'catalog.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class favourites extends StatefulWidget {
   favourites({super.key});

  @override
  State<favourites> createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
   int _page = 0;

   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

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
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.phone),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => search()));
                    },
                    child: Icon(Icons.search, )),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.person_outlined),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_basket),
              )
            ],
          )
        ],
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('SNKRTWN', style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold
            ),
            ),

          ],

        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Text("favourite"),
          ),
        ],
      ),
      bottomNavigationBar: bottombar()
   
   
    );
  }
}
