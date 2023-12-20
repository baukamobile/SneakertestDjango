import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/styles/styles.dart';
class HowToBuy extends StatelessWidget {
  HowToBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Как купить', style: AppTextStyles.bigTextBlack(),),
            ),
            color: Colors.grey[300],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: Text('Доставка и оплата', style: AppTextStyles.smallTextBlack(),),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: Text('Рассрочка Kaspi Red', style: AppTextStyles.smallTextBlack(),),

            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: Text('Гарантия на товар', style: AppTextStyles.smallTextBlack(),),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: Text('FAQ', style: AppTextStyles.smallTextBlack(),),
            ),
          ),
        ],
      ),

      bottomNavigationBar: bottombar(),
    );
  }
}
