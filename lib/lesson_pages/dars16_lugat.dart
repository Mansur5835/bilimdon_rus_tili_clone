import 'package:flutter/material.dart';

class Dars16Lugat extends StatefulWidget {
  const Dars16Lugat({Key? key}) : super(key: key);

  @override
  _Dars16LugatState createState() => _Dars16LugatState();
}

class _Dars16LugatState extends State<Dars16Lugat> {
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
              MyWord(word: "Бaбочка (babochka) - Kapalak"),
              MyWord(word: "Варан (varan) - Echkiemar"),
              MyWord(word: "Верблюд (verblyud) - Tuya"),
              MyWord(word: "Волк (volk) - Bo`ri"),
              MyWord(word: "Голубь (golub) - Kaptar"),
              MyWord(word: "Гусиница (gusinitsa) - Shilliqqurt"),
              MyWord(word: "Ёж (ej) - Tipratikan"),
              MyWord(word: "Заяц (zayats) - Quyon"),
              MyWord(word: "Козёл (kozyol) - Echki"),
              MyWord(word: "Змея (zmeya) - Ilon"),
              MyWord(word: "Комар (komar) - Chivin"),
              MyWord(word: "Конь (kon) - Ot"),
              MyWord(word: "Корова (korova) - Sigir"),
              MyWord(word: "Кошка (koshka) - Mushuk"),
              MyWord(word: "Краб (krab) - Qisqichbaqa"),
              MyWord(word: "Курица (kuritsa) - Tovuq"),
              MyWord(word: "Лев (lev) - Sher"),
              MyWord(word: "Медведь (medved) - Ayiq"),
              MyWord(word: "Мышь (mish) - Sichqon"),
              MyWord(word: "Осёл (osyol) - Eshshak"),
              MyWord(word: "Паук (pаuk) - O`rgimchak"),
              MyWord(word: "Петух (petux) - Xo`roz"),
              MyWord(word: "Сабока (saboka) - It"),
              MyWord(word: "Рыба (riba) - Baliq"),
              MyWord(word: "Слон (slon) - Fil"),
              MyWord(word: "Цыплёнок (tsiplonek) - Jo`ja"),
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
