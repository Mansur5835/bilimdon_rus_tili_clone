import 'package:flutter/material.dart';

class Dars4Lugat extends StatefulWidget {
  const Dars4Lugat({Key? key}) : super(key: key);

  @override
  _Dars4LugatState createState() => _Dars4LugatState();
}

class _Dars4LugatState extends State<Dars4Lugat> {
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
              MyWord(word: "Завтрак (zavtrak) - Nonushta"),
              MyWord(word: "Обет (оbet) - Tushlik"),
              MyWord(word: "Ужин (ujin) - Kechki ovqat"),
              MyWord(word: "Столовая (stolavoya) - Oshxona"),
              MyWord(word: "Баранина (baranina) - Qo`y g`o`shti"),
              MyWord(word: "Мясо (myaso) - Go`sht"),
              MyWord(word: "Горячий (goryachiy) - Issiq"),
              MyWord(word: "Холодный (xolodniy) - Sovuq"),
              MyWord(word: "Плов (plov) - Osh"),
              MyWord(word: "Суп (sup) - Sho`rva"),
              MyWord(word: "Каша (kasha) - Bo`tqa"),
              MyWord(word: "Сладость (sladost) - Shirilik"),
              MyWord(word: "Фрукты (frukti) - Mevalar"),
              MyWord(word: "Персик (persik) - Shaftoli"),
              MyWord(word: "Яблоко (yabloko) - Olma"),
              MyWord(word: "Арбуз (arbuz) - Tarvuz"),
              MyWord(word: "Дыня (dinya) - Qovun"),
              MyWord(word: "Лук (luk) - Piyoz"),
              MyWord(word: "Мёд (myod) - Asal"),
              MyWord(word: "Яйцо (yaytsya) - Tuxum"),
              MyWord(word: "Вода (vado) - Suv"),
              MyWord(word: "Молоко (Mоloko) - Sut"),
              MyWord(word: "Масло (maslo) - Yog`"),
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
