import 'package:flutter/material.dart';
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/elements/googlemap.dart';
import 'package:sneakertowndemo/styles/styles.dart';


class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [ 
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('РЕЖИМ РАБОТЫ', style: AppTextStyles.smallTextBlack(),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('Без перерывов и выходных', style: TextStyle(color: Colors.red[400], fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('с 10:00 до 20:00', style: AppTextStyles.smallTextBlack(),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('ТЕЛЕФОН', style: AppTextStyles.smallTextBlack(),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('+ 7 708 912 0683', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('E-Mail', style: AppTextStyles.smallTextBlack(),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('sneakertown.kz@gmail.com', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network('img/instagramlogo.png', height: 50, width: 50,),
                      Image.network('img/telegramlogo.png', height: 50, width: 50,),
                      Image.network('img/tiktoklogo.png', height: 50, width: 50,),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  // color: Colors.black,
                  child: Center(child: Text('НАПИСАТЬ СООБЩЕНИЕ', style: AppTextStyles.smallTextWhite(),)),
                  decoration: BoxDecoration(
                      color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                    )
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  child: CustomGoogleMap(),
                )
              ],
            ),
          )
          
        ],
      ),
      bottomNavigationBar: bottombar(),
    );
  }
}
