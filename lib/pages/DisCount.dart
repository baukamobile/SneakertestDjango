import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';


class DisCount extends StatelessWidget {
  const DisCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(15),
          child: Image.network('img/discount/discountimages1.png'),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: Image.network('img/discount/discountimages2.png'),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: Image.network('img/discount/discountimages3.png'),
          ),

        ],
      ),
      bottomNavigationBar: bottombar(),
    );
  }
}
