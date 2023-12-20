import 'package:flutter/material.dart';
import 'package:sneakertowndemo/aboutsneakers/aboutsneaker.dart';

class elements extends StatefulWidget {
  const elements({super.key});

  @override
  State<elements> createState() => _elementsState();
}

class _elementsState extends State<elements> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Container(
                    // color: Colors.green,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру
                        children: [

                          Image.asset("img/nb2.jpg", height: 150, width: 150),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
                            child: Text("Кроссовки Hoka One Black S30000-02"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 20, 2),
                            child: Text("• Есть в наличии: 10", style: TextStyle(color: Colors.green)),
                          ),
                          // ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => aboutsneaker()));
                            },
                            child: Container(
                              height: 40,
                              width: 150, // Ширина контейнера
                              color: Colors.black,
                              child: Center( // Выравнивание текста в центре контейнера
                                child: Text("ПОДРОБНЕЕ", style: TextStyle(color: Colors.white, fontSize: 10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру
                        children: [
                          Image.asset("img/airjordan1.jpg", height: 150, width: 150),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
                            child: Text("Кроссовки Hoka One Black S30000-02"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 20, 2),
                            child: Text("• Есть в наличии: 10", style: TextStyle(color: Colors.green)),
                          ),
                          // ),
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 150, // Ширина контейнера
                              color: Colors.black,
                              child: Center( // Выравнивание текста в центре контейнера
                                child: Text("ПОДРОБНЕЕ", style: TextStyle(color: Colors.white, fontSize: 10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
    ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Container(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру
                        children: [
                          Image.asset("img/converse1.png", height: 150, width: 150),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
                            child: Text("Кроссовки Hoka One Black S30000-02"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 20, 2),
                            child: Text("• Есть в наличии: 10", style: TextStyle(color: Colors.green)),
                          ),
                          // ),
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 150, // Ширина контейнера
                              color: Colors.black,
                              child: Center( // Выравнивание текста в центре контейнера
                                child: Text("ПОДРОБНЕЕ", style: TextStyle(color: Colors.white, fontSize: 10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру
                        children: [
                          Image.asset("img/nb1.jpg", height: 150, width: 150),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
                            child: Text("Кроссовки Hoka One Black S30000-02"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 20, 2),
                            child: Text("• Есть в наличии: 10", style: TextStyle(color: Colors.green)),
                          ),
                          // ),
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 150, // Ширина контейнера
                              color: Colors.black,
                              child: Center( // Выравнивание текста в центре контейнера
                                child: Text("ПОДРОБНЕЕ", style: TextStyle(color: Colors.white, fontSize: 10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Container(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру
                      children: [
                        Image.asset("img/nike1.png", height: 150, width: 150),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
                            child: Text("Кроссовки Hoka One Black S30000-02"),
                          ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 20, 2),
                          child: Text("• Есть в наличии: 10", style: TextStyle(color: Colors.green)),
                        ),
                        // ),
                        GestureDetector(
                          child: Container(
                            height: 40,
                            width: 150, // Ширина контейнера
                            color: Colors.black,
                            child: Center( // Выравнивание текста в центре контейнера
                              child: Text("ПОДРОБНЕЕ", style: TextStyle(color: Colors.white, fontSize: 10)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                  Container(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру
                        children: [
                          Image.asset("img/asics1.jpg", height: 150, width: 150),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
                            child: Text("Кроссовки Hoka One Black S30000-02"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 20, 2),
                            child: Text("• Есть в наличии: 10", style: TextStyle(color: Colors.green)),
                          ),
                          // ),
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 150, // Ширина контейнера
                              color: Colors.black,
                              child: Center( // Выравнивание текста в центре контейнера
                                child: Text("ПОДРОБНЕЕ", style: TextStyle(color: Colors.white, fontSize: 10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
