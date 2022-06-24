import 'package:flutter/material.dart';

class Dars18Lugat extends StatefulWidget {
  const Dars18Lugat({Key? key}) : super(key: key);

  @override
  _Dars18LugatState createState() => _Dars18LugatState();
}

class _Dars18LugatState extends State<Dars18Lugat> {
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
              MyWord(word: "Буря (burya) - Boron"),
              MyWord(word: "Ветер (veter) - Shamol"),
              MyWord(word: "Вечер (vecher) - Kechki-payt"),
              MyWord(word: "Вода (voda) - Suv"),
              MyWord(word: "Вдопад (vodopad) - Sharshara"),
              MyWord(word: "Воздух (vozdux) - Havo"),
              MyWord(word: "Время (vremya) - Vaqt"),
              MyWord(word: "Гора (gora) - Tog`"),
              MyWord(word: "Дерево (derevo) - Daraxt"),
              MyWord(word: "Дождь (dojd) - Yomg`ir"),
              MyWord(word: "Дарога (doroga) - Yo`l"),
              MyWord(word: "Звезда (zvezda) - Yulduz"),
              MyWord(word: "Источник (istochnik) - Buloq"),
              MyWord(word: "Камень (kamen) - Tosh"),
              MyWord(word: "Лес (les) - O`rmon"),
              MyWord(word: "Луна (luna) - Oy"),
              MyWord(word: "Мир (mir) - Dunyo"),
              MyWord(word: "Море (more) - Dengiz"),
              MyWord(word: "Облока (oblaka) - Bulutlar"),
              MyWord(word: "Облоко (obloko) - Bulut"),
              MyWord(word: "Огонь (ogon) - Olov"),
              MyWord(word: "Озеро (ozero) - Ko`l"),
              MyWord(word: "Океан (okean) - Ummon"),
              MyWord(word: "Пламя (plamya) - Alanga"),
              MyWord(word: "Планета (ploneta) - Sayyora"),
              MyWord(word: "Поле (pole) - Dala"),
              MyWord(word: "Река (reka) - Daryo"),
              MyWord(word: "Сад (sad) - Bog`"),
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
