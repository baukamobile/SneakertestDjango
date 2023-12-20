import 'package:flutter/material.dart';
import 'package:sneakertowndemo/main.dart';
import 'package:sneakertowndemo/pages/catalog.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';
import 'package:sneakertowndemo/pages/registerpage.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Icon(Icons.search, ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.person_outlined),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: (){

                    },
                    child: Icon(Icons.shopping_basket)),
              )
            ],
          )
        ],
        backgroundColor: Colors.white10,
        title: Row(
          children: [
            Text('SNKRTWN', style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold
            ),
            ),

          ],

        ),
      ),
      body: Center(
        child: Row(
          children: [


          ],
        ),
      ),
    );
  }
}
