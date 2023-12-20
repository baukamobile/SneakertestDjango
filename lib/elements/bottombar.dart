import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sneakertowndemo/pages/basket.dart';
import 'package:sneakertowndemo/pages/catalog.dart';
import 'package:sneakertowndemo/pages/catalogpage/HomePage.dart';
import 'package:sneakertowndemo/pages/favourites.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';


class bottombar extends StatefulWidget {
  bottombar({Key? key}) : super(key: key);
  @override
  State<bottombar> createState() => _bottombarState();
}
class _bottombarState extends State<bottombar> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return
      CurvedNavigationBar(
          index: _page,
          height: 50.0,
          items: [
            Icon(Icons.home_outlined, size: 30),
            Icon(Icons.category_outlined, size: 30),
            Icon(Icons.shopping_cart_outlined, size: 30),
            Icon(Icons.favorite_border_outlined, size: 30),
            Icon(Icons.person_outlined, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.grey,
          animationCurve: Curves.easeOutSine,
          animationDuration: Duration(milliseconds: 100),
          onTap: (index) {
            setState(() {
              _page = index;
            });

            // Handle navigation outside the CurvedNavigationBar onTap.
            navigateToPage(index);
          },
          letIndexChange: (index) => true,

    );

  }

  void navigateToPage(int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => catalog()));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => basket()));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => favourites()));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
        break;
    }
  }
}


// index: _page,