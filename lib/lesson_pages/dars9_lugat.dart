import 'package:flutter/material.dart';

class Dars9Lugat extends StatefulWidget {
  const Dars9Lugat({Key? key}) : super(key: key);

  @override
  _Dars9LugatState createState() => _Dars9LugatState();
}

class _Dars9LugatState extends State<Dars9Lugat> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Bilimdon - Rus Tili"),
          elevation: 1,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: ListView(children: [
              const SizedBox(height: 10),
              MyWord(word: "Цвет (tsvet) - Rang"),
              MyWord(word: "Фигура (figura) - Shakl"),
              MyWord(word: "Зеленый (reloniy) - Yashil"),
              MyWord(word: "Красный (krasniy) - Qizil"),
              MyWord(word: "Желтый (joltiy) - Sariq"),
              MyWord(word: "Белый (beliy) - Oq"),
              MyWord(word: "Черный (chorniy) - Qora"),
              MyWord(word: "Коричневый (korichneviy) - \nJigarrang"),
              MyWord(word: "Синый (siniy) - Ko`k"),
              MyWord(word: "Оранжевый (oranjiviy) - Olovrang"),
              MyWord(word: "Розовый (roziviy) - Pushti"),
              MyWord(word: "Голубой (goluboy) - Havorang"),
              MyWord(word: "Золотой-цвет (zolotoy tsvet) - \nTilla-rang"),
              MyWord(word: "Полосатый (polosatiy) - Yo`l-yo`l"),
              MyWord(word: "Прямоугольник (pryamugolnik) - \nTo`rtburchak"),
              MyWord(word: "Треугольник (treugolnik) - Uchburchak"),
              MyWord(word: "Восьмигранник (vosmigrannik) - \nSakkizburchak"),
              MyWord(word: "Точка (tochka) - Nuqta"),
              MyWord(word: "Линия (liniya) - Chiziq"),
              MyWord(word: "Круг (krug) - Doira"),
              MyWord(word: "Звезда (zvezda) - Yulduz"),
            ]),
          ),
        ),
      ),
    );
  }
}

class MyWord extends StatelessWidget {
  String word;
  MyWord({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 20,
          ),
          Text(
            word,
            style: TextStyle(fontSize: 18),
          ),
        ]),
        Container(
          margin: EdgeInsets.all(10),
          height: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
