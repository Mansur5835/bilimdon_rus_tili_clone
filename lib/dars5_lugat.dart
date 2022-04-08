import 'package:flutter/material.dart';

class Dars5Lugat extends StatefulWidget {
  const Dars5Lugat({Key? key}) : super(key: key);

  @override
  _Dars5LugatState createState() => _Dars5LugatState();
}

class _Dars5LugatState extends State<Dars5Lugat> {
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
              MyWord(word: "Отпуск (otpusk) - Ta`til"),
              MyWord(word: "Неделя (nedelya) - Hafta"),
              MyWord(word: "Остров (ostrov) - Orol"),
              MyWord(word: "Летать (letat) - Uchmoq"),
              MyWord(word: "Багаж (bagaj) - Yuk"),
              MyWord(word: "Кошелек (kashelyoq) - Xamyon"),
              MyWord(word: "Гостиница (gostinitsa) - \nMehmonxona"),
              MyWord(word: "Пешком (peshkom) - Piyoda"),
              MyWord(word: "Дом (dom) - Uy"),
              MyWord(word: "Город (gorod) - Shaxar"),
              MyWord(word: "Деревня (derevnya) - Qishloq"),
              MyWord(word: "Звонит (zvonit) - Qo`ng`iroq-qilmoq"),
              MyWord(word: "Бассейн (basseyn) - Xovuz"),
              MyWord(word: "Озеро (pzero) - Ko`l"),
              MyWord(word: "Река (reka) - Daryo"),
              MyWord(word: "Море (mero) - Dengiz"),
              MyWord(word: "Гора (gora) - Tog`"),
              MyWord(word: "Зоопарк (zoopark) - Hayvonot-bog`i"),
              MyWord(word: "Туалет (tualet) - Hojotxona"),
              MyWord(word: "Мусор (musor) - Axlat"),
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
