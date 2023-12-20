import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/main.dart';
import 'package:sneakertowndemo/pages/compare.dart';
import 'package:sneakertowndemo/pages/favourites.dart';
import '../elements/search.dart';
import 'catalog.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';
class basket extends StatelessWidget {
  const basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Image.network('img/cart.jpeg')
          ),
        ],
      ),
      bottomNavigationBar: bottombar()
    );
  }
}
