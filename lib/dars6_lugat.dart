import 'package:flutter/material.dart';

class Dart6Lugat extends StatefulWidget {
  const Dart6Lugat({Key? key}) : super(key: key);

  @override
  _Dart6LugatState createState() => _Dart6LugatState();
}

class _Dart6LugatState extends State<Dart6Lugat> {
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
              MyWord(word: "Сердце (setsche) - Yurak"),
              MyWord(word: "Тело (telo) - Badan"),
              MyWord(word: "Гордо (gorlo) - Tomoq"),
              MyWord(word: "Зуб (zub) - Tish"),
              MyWord(word: "Спина (spina) - Bel"),
              MyWord(word: "Кошель (koshel) - Yo`tal"),
              MyWord(word: "Покой (pokoy) - Tinchlik"),
              MyWord(word: "Больной (bolnoy) - Bemor"),
              MyWord(word: "Выздоравливать (vizdoravlivat) - \nTuzalmoq"),
              MyWord(word: "Болеть (bolet) - Kasal-bo`lish"),
              MyWord(word: "Жар (jar) - Istma"),
              MyWord(word: "Боль (bol) - Og`riq"),
              MyWord(word: "Болит (bolit) - Og`riyapti"),
              MyWord(word: "Здоровье (zdorovye) - Sog`liq"),
              MyWord(word: "Чувствовать (chuvstvovat) - \nHis-qilmoq"),
              MyWord(word: "Лекарство (lekarstvo) - Dori"),
              MyWord(word: "Раствор (rastvor) - Eritma"),
              MyWord(word: "Живот (jivot) - Qorin"),
              MyWord(word: "Голова (golova) - Bosh"),
              MyWord(word: "Нога (noga) - Oyoq"),
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
