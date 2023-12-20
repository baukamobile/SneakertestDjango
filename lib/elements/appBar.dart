import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/search.dart';

class AppBAR extends StatelessWidget {
  const AppBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => search()));
                  },
                  child: Icon(
                    Icons.search,
                  )),
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
          Text(
            'SNKRTWN',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
