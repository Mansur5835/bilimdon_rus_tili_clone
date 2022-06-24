import 'package:flutter/material.dart';

class Dars17Lugat extends StatefulWidget {
  const Dars17Lugat({Key? key}) : super(key: key);

  @override
  _Dars17LugatState createState() => _Dars17LugatState();
}

class _Dars17LugatState extends State<Dars17Lugat> {
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
              MyWord(word: "Борода (boroda) - Saqol"),
              MyWord(word: "Вес (ves) - Og`irlik"),
              MyWord(word: "Волос (volos) - Soch"),
              MyWord(word: "Глаз (glaz) - Ko`z"),
              MyWord(word: "Глухой (gluxoy) - Kar"),
              MyWord(word: "Голова (golova) - Bosh"),
              MyWord(word: "Горло (gorlo) - Tomoq"),
              MyWord(word: "Губы (gubi) - Lablar"),
              MyWord(word: "Желудок (jeludok) - Oshqozon"),
              MyWord(word: "Живот (jivot) - Qorin"),
              MyWord(word: "Застряло (zastryalo) - Tiqilib-qoldi"),
              MyWord(word: "Зуб (zub) - Tish"),
              MyWord(word: "Кишечник (kishechnik) - Ichak"),
              MyWord(word: "Лёгкие (lyogkiye) - O`pka"),
              MyWord(word: "Мозки (mozgi) - Miya"),
              MyWord(word: "Нога (noga) - Oyoq"),
              MyWord(word: "Ноготь (nogot) - Tirnoq"),
              MyWord(word: "Нос (nos) - Burun"),
              MyWord(word: "Палец (palets) - Barmoq"),
              MyWord(word: "Печен (pechen) - Jigar"),
              MyWord(word: "Плечо (plecho) - Yelka"),
              MyWord(word: "Поясница (poyasnitsa) - Bel"),
              MyWord(word: "Пупок (pupok) - Kindik"),
              MyWord(word: "Рука (ruka) - Qo`l"),
              MyWord(word: "Сердце (serdse) - Yurak"),
              MyWord(word: "Тело (Telo) - Tana"),
              MyWord(word: "Усы (usi) - Mo`ylov"),
              MyWord(word: "Ухо (uxo) - Quloq"),
              MyWord(word: "Язык (yazik) - Til"),
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
