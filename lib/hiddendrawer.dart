import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/elements/brandlogo.dart';
import 'package:sneakertowndemo/pages/Contacts.dart';
import 'package:sneakertowndemo/pages/DisCount.dart';
import 'package:sneakertowndemo/pages/HowToBuy.dart';
import 'package:sneakertowndemo/pages/catalog.dart';
import 'package:sneakertowndemo/pages/catalogpage/HomePage.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}
final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

class _HiddenDrawerState extends State<HiddenDrawer> {
  List <ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Главная',
            colorLineSelected: Colors.black,
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
        ),
        HomePage(),

    ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Каталог',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
        ),
        catalog(),

      ),
         ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Акции',
            colorLineSelected: Colors.white,

            baseStyle: TextStyle(),
            selectedStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
        ),
        DisCount(),


    ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Бренды',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
        ),
        BrandLogo(),

      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Как купить',
            colorLineSelected: Colors.white,

            baseStyle: TextStyle(),
            selectedStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
        ),
        HowToBuy(),

    ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Контакты',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
        ),
        Contacts(),

      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        backgroundColorAppBar: Colors.black,
        initPositionSelected: 0,
        backgroundColorMenu: Colors.grey,
        slidePercent: 50,
        contentCornerRadius: 20,
        curveAnimation: Curves.fastEaseInToSlowEaseOut,
      disableAppBarDefault: false,
      withShadow: true,
      withAutoTittleName: true,

    );
  }

}
