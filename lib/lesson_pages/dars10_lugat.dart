import 'package:flutter/material.dart';

class Dars10Lugat extends StatefulWidget {
  const Dars10Lugat({Key? key}) : super(key: key);

  @override
  _Dars10LugatState createState() => _Dars10LugatState();
}

class _Dars10LugatState extends State<Dars10Lugat> {
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
              MyWord(word: "Я (ya) - Men"),
              MyWord(word: "Ты (ты) - sen"),
              MyWord(word: "Он (on) - U(erkak)"),
              MyWord(word: "Она (ona) - U(ayol)"),
              MyWord(word: "Мы (mi) - Biz"),
              MyWord(word: "Вы (vi) - Siz"),
              MyWord(word: "Они (oni) - Ular"),
              MyWord(word: "Мой (moy) - Meniki"),
              MyWord(word: "Моя (moya) - Meniki"),
              MyWord(word: "Мое (moyo) - Meniki"),
              MyWord(word: "Твой (tvoy) - Seniki"),
              MyWord(word: "Твоя (tvoya) - Seniki"),
              MyWord(word: "Твое (tvoyo) - Seniki"),
              MyWord(word: "Его (yeyo) - Uning(erkak)"),
              MyWord(word: "Её (yevo) - Uning(ayol)"),
              MyWord(word: "Их (ix) - Ularning"),
              MyWord(word: "Наш (nash) - Bizning"),
              MyWord(word: "Ваш (vash) - Sizning"),
              MyWord(word: "Мне (mne) - Menga"),
              MyWord(word: "Тебе (tebe) - Senga"),
              MyWord(word: "Им (im) - Ularga"),
              MyWord(word: "Нам (nam) - Bizga"),
              MyWord(word: "Вам (vam) - Sizga"),
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
            width: 85,
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
