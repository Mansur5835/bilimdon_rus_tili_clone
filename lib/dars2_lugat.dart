import 'package:flutter/material.dart';

class Dars2Lugat extends StatefulWidget {
  Dars2Lugat({Key? key}) : super(key: key);

  @override
  _Dars2LugatState createState() => _Dars2LugatState();
}

class _Dars2LugatState extends State<Dars2Lugat> {
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
              MyWord(word: "Здравствуйте (zdravstvuyte) - Salom"),
              MyWord(word: "Как? (kak) - Qanday?"),
              MyWord(word: "Очень (ochen) - Juda"),
              MyWord(word: "Дело (delo) - Ish"),
              MyWord(word: "Я (ya) - Men"),
              MyWord(word: "Вы (vi) - Siz"),
              MyWord(word: "Ты (ti) - Sen"),
              MyWord(word: "Она (ona) - U(ayol)"),
              MyWord(word: "Он (on) - U(erkak)"),
              MyWord(word: "Мы (mi) - Biz"),
              MyWord(word: "Они (oni) - Ular"),
              MyWord(word: "Оно (ono) - U(jonsiz)"),
              MyWord(word: "Это (eto) - Bu(jonsiz)"),
              MyWord(word: "Меня (meya) - Mening"),
              MyWord(word: "Вас (vas) - Sizning"),
              MyWord(word: "Мне (mne) - Menga"),
              MyWord(word: "Вам (vam) - Sizga"),
              MyWord(word: "Моё (mayo) - Maniki"),
              MyWord(word: "Всё (vsyo) - Hammasi"),
              MyWord(word: "Спосиба (spasibo) - Rahmat"),
              MyWord(word: "Добрий (dobriy) - Hayrli"),
              MyWord(word: "Утро (utro) - Tong"),
              MyWord(word: "День (den) - Kun"),
              MyWord(word: "Вечер (vecher) - Kech"),
              MyWord(word: "Ночь (noch) - Tun"),
              MyWord(word: "Встречать (vtrechat) - Uchtarish"),
              MyWord(word: "До свидания (do svidanitya) - \nKo`rishguncha"),
              MyWord(word: "Пока (poka) - Xayr"),
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
