import 'package:flutter/material.dart';

class Dars13Lugat extends StatefulWidget {
  const Dars13Lugat({Key? key}) : super(key: key);

  @override
  _Dars13LugatState createState() => _Dars13LugatState();
}

class _Dars13LugatState extends State<Dars13Lugat> {
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
              MyWord(word: "Мой (moy) - Mening(erkak)"),
              MyWord(word: "Твой (tvoy) - Sening"),
              MyWord(word: "Моя (moya) - Mening(ayol)"),
              MyWord(word: "Твоя (tvoya) - Sening(ayol)"),
              MyWord(word: "Книга (kniga) - Kitob"),
              MyWord(word: "Книги (knigi) - Kitoblar"),
              MyWord(word: "Книги (knigi) - Kitobning"),
              MyWord(word: "Книгу (knigu) - Kitobni"),
              MyWord(word: "На-книгу (na-knigu) - Kitobga"),
              MyWord(word: "На-книге (na-knige) - Kitobda"),
              MyWord(word: "С-книгой (s-knigoy) - Kitob-bilan"),
              MyWord(word: "У-меня (u-menya) - Menda"),
              MyWord(word: "У-тебя (u-tebya) - Senda"),
              MyWord(word: "Мне (mne) - Menga"),
              MyWord(word: "Тебе (tebe) - Senga"),
              MyWord(word: "Ему (emu) - Unga(erkak)"),
              MyWord(word: "Ей (ey) - Unga(ayol)"),
              MyWord(word: "Им (im) - Ularga"),
              MyWord(word: "Нам (nam) - Bizga"),
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
